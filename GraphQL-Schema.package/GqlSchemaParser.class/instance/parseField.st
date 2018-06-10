parsing
parseField

	| field |
	
	field := GqlSchemaField named: self parseName.

	field 	arguments: self parseArgumentList.
		
	self expectColon.
	
	field type: self parseType.
		
	^ field