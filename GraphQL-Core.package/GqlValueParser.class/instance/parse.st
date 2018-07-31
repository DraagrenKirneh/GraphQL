parsing
parse

	self skipWhitespace.

	^ reader peek isDigit 
		ifTrue: [ self parseNumber ]
		ifFalse: [ self parseValue ]