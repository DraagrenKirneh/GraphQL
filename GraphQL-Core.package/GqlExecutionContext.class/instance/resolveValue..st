as yet unclassified
resolveValue: aValue

	aValue class == GqlVariableReferenceNode ifFalse: [ ^ aValue ].
	
	^ variables at: aValue name