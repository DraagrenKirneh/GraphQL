definition
parseTypeDefinition

	| typeDef |
	
	typeDef := GqlSchemaTypeDefinition named: self parseName.
	
	self peekForImplements ifTrue: [ 
		typeDef interfaces: self parseInterfaceList	
	].

	typeDef fields: self parseFields.
				
	^ typeDef	
