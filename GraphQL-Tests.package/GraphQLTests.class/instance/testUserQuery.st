test - user
testUserQuery

	| gql query result |
	
	query := '{
  		user(id: 4) {
   	 		id
    		name
    		smallPic: profilePic(size: 64)
    		bigPic: profilePic(size: 1024)
  		}
	}'.
	
	gql := self coreResolvers.
	
	result := gql execute: query.
	
	self assertResult: result atPath: {'data' . 'user'} with: [ :dct |
		self assert: dct equals: self singleUserResult 
	]