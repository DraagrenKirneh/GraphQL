tests
testPeekFor

	self initOn: (String tab repeat: 4), 'a'.
	
	self assert: (parser peekFor: $a)