instance creation
fromPragma: aPragma

	| fields args defaults |
	
	self verifyPragma: aPragma.
	
	fields := aPragma arguments.

	defaults := IdentityDictionary new.
	args := fields second collect: [ :each | 
		each isArray 
			ifTrue: [ defaults at: each first  put: each second .  each first ] 
			ifFalse: [ each ] ].

	^ self new 
		name: fields first;
		arguments: args;			
		defaults: defaults;	
		type: fields third;
		selector: aPragma methodSelector;
		isList: (aPragma keyword endsWith: #listType:)
		yourself	
		