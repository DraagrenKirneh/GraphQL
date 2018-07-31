parsing
parseValue

	| token |
	
	token := reader next. 
	token = $+ ifTrue: [ ^ self parseNumber ].
	token = $- ifTrue: [ ^ self parseNumber negated ].			
	token = $" ifTrue: [ ^ self parseString ].
	token = $$ ifTrue: [ ^ self parseReference ].
	"token = $' ifTrue: [ ^ self parseLiteralString ]."
	token = $f ifTrue: [ self expectString: 'alse'. ^ false ].
	token = $t ifTrue: [ self expectString: 'rue'. ^ true ].
	token = $n ifTrue: [ self expectString: 'ull'. ^ nil ].
	token = $[ ifTrue: [ ^ self parseArray asArray ].
	token = ${ ifTrue: [ ^ self parseInlineTable ].
	
	buffer nextPut: token. "todo make function parseEnum, checking for isSeperator  not"

	^ GqlEnumNode named: self parseBasicName "enum"
		
	
	