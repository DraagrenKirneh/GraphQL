parsing
parseField

	| field |
	
	field := GqlField named: self parseName.

	field 	arguments: self parseArgumentList.
		
	self expectColon.
	
	field type: self parseType.
		
	^ field