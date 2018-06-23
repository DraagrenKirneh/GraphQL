as yet unclassified
createTypeResolver: aClass
	
	| fields |
	
	fields := self fieldResolvers: #gqlField: in: aClass.
	
	^ GqlTypeResolver new 
		name: aClass gqlAlias;
		addFields: fields;
		yourself
		