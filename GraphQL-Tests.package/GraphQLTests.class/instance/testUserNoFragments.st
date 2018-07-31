test - user
testUserNoFragments

	| gql query result |
	
	query := 'query {
  		user(id: 4) {
    		friends(first: 10) {
      			id
      			name
     		 	profilePic(size: 50)
    		}
    		mutualFriends(first: 10) {
     	 		id
      			name
      			profilePic(size: 50)
  	  		}
 	 	}
	}'.
	
	gql := self coreResolvers.
	
	result := gql execute: query.
	