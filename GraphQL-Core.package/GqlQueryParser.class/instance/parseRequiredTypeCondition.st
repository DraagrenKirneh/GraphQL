parsing
parseRequiredTypeCondition

	| type |
	
	type := self parseTypeCondition.
	type ifNil: [ self error: 'The type cannot be nil' ].
	
	^ type 
		
	