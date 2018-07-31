parsing
parseField

	| field description |

	description := self parseOptionalString.	
	field := GqlField named: self parseName.

	field 
		description: description;
	 	arguments: self parseArgumentList.
		
	self expectColon.
	
	field 
		type: self parseType;
		directives: self parseDirectiveList.
		
	^ field