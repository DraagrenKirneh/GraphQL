parse - value
parseInlineTable

	| dict |
	
	dict := Dictionary new.
	
	[ 
		self skipWhitespaceAndComments.
		(reader  peekFor: $}) ifTrue: [ ^ dict ].
	
		dict add: self parseKeyValuePair.
		
		self skipWhitespaceAndComments.		
		(reader  peekFor: $}) ifTrue: [ ^ dict ].
	
		self skipTrailingCommas		
	] whileTrue.

	self unexpectedEnding

	
	
