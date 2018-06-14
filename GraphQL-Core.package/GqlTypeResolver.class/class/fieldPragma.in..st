as yet unclassified
fieldPragma: selector in: aClass

	| pragmas |
	
	pragmas := Pragma allNamed: selector from: aClass to: Object.
		
	^ pragmas collect: [ :each | GqlPerformResolver fromPragma: each ]