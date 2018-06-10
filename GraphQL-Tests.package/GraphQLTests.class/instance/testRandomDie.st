tests
testRandomDie

	| gql res |

	gql := GqlBuilder new 
		classes: { GqlExRandomDie };
		addQuery: GqlExRandomDie rootResolver;
		build.

	gql execute: '{ 
		getDie(numSides: 10) { 
			rollOnce 
			roll(count: 10)
		} 		
	}'.
	
	res := gql execute: 'query dice { 
		getDie(numSides: 1) { 
			rollOnce 
		} 		
	}'.
		
	self assertResult: res atPath: { 'data' . 'getDie' . 'rollOnce' } equals: 1	