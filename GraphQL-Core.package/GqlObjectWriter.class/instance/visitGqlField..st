visiting
visitGqlField: aSelectionField

	| fieldResolver value |
	
	fieldResolver := resolver fieldResolverAt: aSelectionField name.
	value := fieldResolver resolveField: aSelectionField from: parent in: context.
	
	output at: aSelectionField alias put: value.