parse - value
parseValue

	self skipWhitespace.
		
	reader peek isDigit ifTrue: [ ^ self parseNumber ].
		
	^ self tokenish