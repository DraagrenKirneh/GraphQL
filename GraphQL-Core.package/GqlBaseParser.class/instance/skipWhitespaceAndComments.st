skipping
skipWhitespaceAndComments

	reader untilEnd: [ 
		reader skipWhitespace.	
		reader atEnd ifTrue: [ ^ self ].	
		(reader peekFor: $#) ifFalse: [ ^ self ].
		reader skipLine
	]
