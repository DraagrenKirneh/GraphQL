tests
testFieldAlias

	| gql res |

	gql := self randomDieResolver.
	
	res := gql execute: '{ 
		getDie(numSides: 1) { 
			roll: rollOnce 
			woll: roll(count: 10)
		} 		
	}'.
	
	self assertResult: res atPath: { 'data' . 'getDie' . 'roll'  } equals: 1.
	self assertResult: res atPath: { 'data' . 'getDie' . 'woll'  } with: [ :item |
		self 
			assert: item size equals: 10;
			assert: item asSet size equals: 1
			
	].	