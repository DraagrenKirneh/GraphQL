visiting
visitGqlField: aSelectionField

	| fieldResolver value |
	
	"aSelectionField name = '__typename' ifTrue: [ 
		output at: aSelectionField name put: parent class gqlAlias.
		^ self 
	]."
	
	fieldResolver := resolver fieldResolverAt: aSelectionField name.
	value := fieldResolver resolveField: aSelectionField from: parent in: context.
	
	output at: aSelectionField alias put: value.