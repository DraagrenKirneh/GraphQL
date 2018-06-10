definition
parseInput

	| inputDef |
	
	inputDef := GqlSchemaInputDefinition named: self parseName.

	inputDef fields: self parseFields.
				
	^ inputDef	
