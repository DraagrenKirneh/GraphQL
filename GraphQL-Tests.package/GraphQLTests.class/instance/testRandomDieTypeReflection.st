tests
testRandomDieTypeReflection

	| gql res |

	gql := self randomDieResolver.
	
	res := gql execute: '{ 
		__type(name: "RandomDie") { 
			name 
		}		
	}'.

	self assertResult: res atPath: { 'data' . '__type' . 'name' } equals: 'RandomDie'.	
	
		
