definition
parseDefinition

	| name |
	
	name := self parseName.
	
	name = 'interface' ifTrue: [ ^ self parseInterface ].
	name = 'scalar' ifTrue: [ ^ self parseScalar ].
	name = 'type' ifTrue: [ ^ self parseTypeDefinition ].
	name = 'input' ifTrue: [ ^ self parseInput ].
	name = 'schema' ifTrue: [ ^ self parseSchema ]. 
	name = 'enum' ifTrue: [ ^ self parseEnum ].
	name = 'union' ifTrue: [ ^ self parseUnion ].
	
	self error: 'unknown definition'
		

	