instance creation
fromPragma: aPragma

	| field |
		
	field := GqlTypeParser parseField: aPragma arguments first.

	^ self new 
		name: field name;
		field: field;			
		selector: aPragma methodSelector;
		yourself	
		