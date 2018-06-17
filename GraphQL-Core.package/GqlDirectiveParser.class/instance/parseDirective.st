parsing
parseDirective

	| description directive |
	
	description := self parseOptionalString.
	
	(self parseName = 'directive') ifFalse: [ self error ].
	
	self expectChar: $@.
	
	directive := GqlDirectiveDefinition named: self parseName.
	directive 
		description: description;
		arguments: self parseArgumentDefinitions;
		locations: self parseDirectiveLocations.
		
	^ directive 