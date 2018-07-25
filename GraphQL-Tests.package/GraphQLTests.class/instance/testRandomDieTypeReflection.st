tests
testRandomDieTypeReflection

	| gql res |

	gql := GqlBuilder new 
		types: { GqlExRandomDie };
		roots: { GqlExRandomDie };
		build.

	res := gql execute: '{ 
		__type(name: "RandomDie") { 
			name 
		}		
	}'.

	self assertResult: res atPath: { 'data' . '__type' . 'name' } equals: 'RandomDie'.	
	
		
