parsing
parseOptionalString

	^ (self peekFor: $") 
		ifTrue: [ self parseString ]
		ifFalse: [ nil ]