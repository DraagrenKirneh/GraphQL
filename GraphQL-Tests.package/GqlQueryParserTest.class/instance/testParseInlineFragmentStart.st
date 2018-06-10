tests
testParseInlineFragmentStart

	self initOn: '...'.
	
	self assert: parser parseName equals: ''