parsing
parseValueAs: aType
	
	self skipWhitespace.
	
	aType = 'Int' ifTrue: [ ^ self parseInteger ].
	aType = 'String' ifTrue: [ ^ self expectChar: $"; parseString ].
	aType = 'Float' ifTrue: [ ^ self parseNumber ].
	aType = 'Boolean' ifTrue: [ ^ self parseBoolean ].
	aType = 'ID' ifTrue: [ ^ self parseID ].
	
	self error: 'unknown type'