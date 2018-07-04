tests
testRandomDieTypename

	| gql res |

	gql := GqlBuilder new 
		types: { GqlExRandomDie };
		roots: { GqlExRandomDie };
		build.

	res := gql execute: '{ 
		getDie(numSides: 10) { 
			__typename
		} 		
	}'.

	self assertResult: res atPath: { 'data' . 'getDie' . '__typename' } equals: 'RandomDie'.	
	
		
