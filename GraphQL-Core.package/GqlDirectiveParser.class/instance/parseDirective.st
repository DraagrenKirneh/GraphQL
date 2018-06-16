parsing
parseDirective

	| description directive |
	
	description := self parseOptionalString.
	
	(self parseName = 'directive') ifFalse: [ self error ].
	
	self expectChar: $@.
	
	directive := GqlDirective named: self parseName.
	directive 
		arguments: self parseArgumentDefinitions;
		locations: self parseDirectiveLocations
	