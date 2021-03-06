test - dice
testRandomDie

	| gql res |

	gql := self randomDieResolver.
	
	gql execute: '{ 
		getDie(numSides: 10) { 
			rollOnce 
			roll(count: 10)
		} 		
	}'.
	
	res := gql execute: 'query Dice { 
		getDie(numSides: 1) { 
			rollOnce 
		} 		
	}'.
		
	self assertResult: res atPath: { 'data' . 'getDie' . 'rollOnce' } equals: 1.	
	
	res := gql execute: 'query Dice { 
		getDie(numSides: 1) { 
			roll 
		} 		
	}'.
		
	self assertResult: res atPath: { 'data' . 'getDie' . 'roll' } equals: #(1)
