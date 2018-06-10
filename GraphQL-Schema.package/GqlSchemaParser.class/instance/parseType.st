types
parseType
	
	| type |
	
	type := (self peekFor: $[) 
		ifTrue: [ self parseArrayType ]
		ifFalse: [ self parseNamedType ].
		
	(self peekFor: $!) ifTrue: [ 
		type nonNull 	
	].

	^ type