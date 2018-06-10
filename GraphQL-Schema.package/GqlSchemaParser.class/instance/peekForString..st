private
peekForString: aString
	
	self skipWhitespace.
	
	reader explore: [ :explorer |
	 	(aString allSatisfy: [ :char |
			explorer peekFor: char
		]) ifFalse: [ ^ false ]
	].

	reader skip: aString size.
	
	^ true