as yet unclassified
createTypeResolver: aClass
	
	| fields |
	
	fields := self fieldResolvers: #(gqlField: gqlContextField:) in: aClass.
	
	^ GqlTypeResolver new 
		name: aClass gqlAlias;
		addFields: fields;
		yourself
		