pragma keywords
performPragma: aPragmaSelector in: anObject

	| items |
	
	items := Pragma allNamed: aPragmaSelector in: anObject class.
	items ifEmpty: [ ^ nil ].	
	items size = 1 ifFalse: [ self error ].
	
	^ items anyOne methodSelector value: anObject