as yet unclassified
fieldPragma: selector in: aClass

	| pragmas |
	
	pragmas := Pragma allNamed: selector from: aClass to: Object.
	
	pragmas
		detect: [ :each | each arguments second size ~= each method numArgs ]
		ifFound: [ :each | self error: 'Cannot convert to basic gql function' ].
	
	^ pragmas collect: [ :each | GqlPerformResolver fromPragma: each ]