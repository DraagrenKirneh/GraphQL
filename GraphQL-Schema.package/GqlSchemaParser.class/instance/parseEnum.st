definition
parseEnum

	| enum |
	
	enum := GqlSchemaEnumDefinition named: self parseName.
	enum fields: self parseEnumFields.
	
	^ enum 