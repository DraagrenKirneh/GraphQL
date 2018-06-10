parsing - document
parseDefinition

	| name |
	
	name := self parseName.
	name ifEmpty: [ 
		^ GqlOperationNode queryShorthand: self parseSelectionSet 
	].

	(#(query mutation subscription) includes: name) 
		ifTrue: [ ^ self parseOperation: name ].
		
	name = 'fragment' ifTrue: [ ^ self parseFragment ].
	
	self error: 'unknown definition'
		

	