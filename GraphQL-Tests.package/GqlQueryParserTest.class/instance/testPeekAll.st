tests
testPeekAll
	
	| result |
	
	self initOn: 'on'.
	
	result := parser peekAll: 'on'.
	
	self 
		assert: result;
		assert: (parser instVarNamed: #reader) atEnd 