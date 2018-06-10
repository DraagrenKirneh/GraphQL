definition
parseInterface
	
	| interface |
	

	interface := GqlSchemaInterfaceDefinition named: self parseName.
	interface fields: self parseFields.
	
	^ interface 