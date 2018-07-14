instance creation
fromPragma: aPragma

	| field |
		
	field := GqlTypeParser parseField: aPragma arguments first.
	
	^ self fromField: field selector: aPragma methodSelector
		