as yet unclassified
verify: anObject
	
	(anObject isNil and: [ nullable ]) ifTrue: [ ^ self ].
		
	anObject gqlAlias == name ifFalse: [ 
		name = #ID ifTrue: [ 
			(anObject isString or: [ anObject isInteger ]) 
				ifTrue: [ ^ self ]	
		].
		GqlValidationError signal	
	]