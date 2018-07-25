test - dice
testTopLevelAlias

	| gql res |

	gql := self randomDieResolver.
	
	res := gql execute: '{ 
		oneSidedDice: getDie(numSides: 1) { 
			result: rollOnce 
		} 		
	}'.
	
	self assertResult: res atPath: { 'data' . 'oneSidedDice' . 'result'  } equals: 1.