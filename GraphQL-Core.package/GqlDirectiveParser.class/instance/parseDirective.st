parsing
parseDirective

	| description directive |
	
	description := self parseOptionalString.
	
	self expectName: 'directive'. 
	
	self expectChar: $@.
	
	directive := GqlDirectiveDefinition named: self parseName.
	directive 
		description: description;
		arguments: self parseArgumentDefinitions.
		
	self expectName: 'on'.
		
	directive locations: self parseDirectiveLocations.
		
	^ directive 