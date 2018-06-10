tests
testParseRequiredTypeCondition
	
	| type |
	
	self initOn: 'on User'.
	
	type := parser parseRequiredTypeCondition.
	