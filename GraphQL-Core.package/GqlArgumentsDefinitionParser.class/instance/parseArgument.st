parsing
parseArgument

	| argument |
	
	argument := GqlArgument named: self parseName.
	
	self expectColon.
	
	argument type: self parseTypeDefinition.
	
	(self peekFor: $=) ifTrue: [ 
		argument defaultValue: (GqlValueParser parse: reader)
	].
	
	^ argument 
	