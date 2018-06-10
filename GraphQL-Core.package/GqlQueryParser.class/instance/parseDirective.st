parsing - field
parseDirective
	
	^ GqlDirectiveNode new
		name: self parseName;
		arguments: self parseArgumentList;
		yourself	