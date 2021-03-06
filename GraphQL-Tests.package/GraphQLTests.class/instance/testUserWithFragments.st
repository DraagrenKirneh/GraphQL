test - user
testUserWithFragments

	| gql query result |
	
	query := 'query {
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
	}'.
	
	gql := self coreResolvers.
	
	result := gql execute: query.

