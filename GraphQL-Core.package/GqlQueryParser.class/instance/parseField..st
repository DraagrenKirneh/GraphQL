parsing - field
parseField: aToken

	| field |
	
	field := GqlFieldNode new.
	
	(self peekFor: $:) 
		ifTrue: [ 
			field alias: aToken; 
				name: self parseRequiredName.
		]
		ifFalse: [ field name: aToken ].
			
	field 
		arguments: self parseArgumentList;
		directives: self parseDirectiveList;
		selections: self parseOptionalSelectionSet.
		
	^ field 

	
	