definition
parseSchema

	^ GqlSchemaDefinition new
		fields: self parseRootFields;
		yourself 
		