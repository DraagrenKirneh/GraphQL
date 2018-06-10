testing
iconForTestResultOf: aMethod
	
	| iconSelector |
	
	iconSelector := aMethod methodClass runDict
		at: aMethod 
		ifPresent: [ :ok | 
			ok 
				ifTrue: [ #testGreenIcon ]
				ifFalse: [ #testRedIcon ]  
		]
		ifAbsent: [ #testNotRunIcon ].
	
	^ self iconNamed: iconSelector