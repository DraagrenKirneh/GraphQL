tests
testParseFieldArgumentObject
	
	| args |
	
	self initOn: '(handles: ["zuck", "cocacola"])'.
	
	args := parser parseArgumentList.
	
	self 
		assert: args size equals: 1;
		assert: args anyOne name equals: 'handles';
		assert: args anyOne value equals: { 'zuck' . 'cocacola' }