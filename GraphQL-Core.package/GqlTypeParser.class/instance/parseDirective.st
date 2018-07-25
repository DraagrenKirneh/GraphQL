parsing
parseDirective
	
	^ GqlDirectiveNode new
		name: self parseName;
		arguments: self parseArgumentList;
		yourself	