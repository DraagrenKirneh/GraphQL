parsing
parseArgument

	| argument |
	
	argument := GqlSchemaArgument named: self parseName.
	
	self expectColon.
	
	argument type: self parseType.
	
	(self peekFor: $=) ifTrue: [ 
		argument defaultValue: (self parseValueAs: argument type name)
	].
	
	^ argument 
	