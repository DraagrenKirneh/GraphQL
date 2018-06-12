instance creation
fromPragma: aPragma

	| fields args defaults |
	
	self verifyPragma: aPragma.
	
	fields := aPragma arguments.

	defaults := IdentityDictionary new.
	args := fields second collect: [ :each | GqlArgument fromArray: each ].

	^ self new 
		name: fields first;
		arguments: args;			
		type: (GqlTypeParser parse: fields third);
		selector: aPragma methodSelector;
		isList: (aPragma keyword endsWith: #listType:)
		yourself	
		