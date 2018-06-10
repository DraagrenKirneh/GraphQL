fragments
exampleNo18

	<parseTest>
	
	^ 	'query noFragments {
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
		}'
