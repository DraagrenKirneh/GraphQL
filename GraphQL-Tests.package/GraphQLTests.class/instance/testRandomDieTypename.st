tests
testRandomDieTypename

	| gql res |

	gql := self randomDieResolver.

	res := gql execute: '{ 
		getDie(numSides: 10) { 
			__typename
		} 		
	}'.

	self assertResult: res atPath: { 'data' . 'getDie' . '__typename' } equals: 'RandomDie'.	
	
		
