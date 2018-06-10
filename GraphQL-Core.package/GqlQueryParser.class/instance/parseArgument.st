parsing
parseArgument

	| argument |
	
	argument := GqlArgumentNode new.
	argument 	name: self parseName.
		
	self expectColon.
	
	argument value: self parseValue.
	
	^ argument 