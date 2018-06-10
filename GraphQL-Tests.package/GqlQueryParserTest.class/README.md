GqlQueryParser parse: 'query inlineFragmentNoType($expandedInfo: Boolean) {
  user(handle: "zuck") {
    id
    name
    ... @include(if: $expandedInfo) {
      firstName
      lastName
      birthday
    }
  }
}'

GqlQueryParser parse: 'query withFragments {
  			user(id: 4) {
    		friends(first: 10) {
      			...friendFields
    		}
    		mutualFriends(first: 10) {
     			...friendFields
    		}
  		}
	}
	fragment friendFields on User {
  		id
  		name
  		profilePic(size: 50)
	}'

| text parser |

text := 'query inlineFragmentTyping {
  			profiles(handles: ["zuck", "cocacola"]) {
    		handle
    		... on User {
      			friends {
       			count
      			}
    		}
    		... on Page {
      			likers {
        			count
      			}
    		}
  		}
	}'.

GqlQueryParser parse: text