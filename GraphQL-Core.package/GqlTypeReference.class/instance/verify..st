as yet unclassified
verify: anObject

	(anObject isNil and: [ nullable not ]) 
		ifTrue: [ GqlValidationError signal ]