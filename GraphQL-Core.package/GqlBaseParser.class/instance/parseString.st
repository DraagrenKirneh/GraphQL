parsing - string
parseString

	| backslash |
		
	(reader peekFor: $") ifTrue: [ 
		^ (reader peekFor: $") 
			ifTrue: [ self parseMultiString ] 
			ifFalse: [ '' ]
	].	
		
	backslash := false.
	reader untilEnd: [ | char |
		reader checkNewline ifTrue: [ self error: 'newline in string!' ].	
		char := reader next.
		(char = $\ and: [ backslash not ])
			ifTrue: [ backslash := true ]
			ifFalse: [  
				backslash ifTrue: [ 
					backslash := false.
					self backslash: char
				]
				ifFalse: [ 
					char = $" ifTrue: [ ^ self transferBuffer ].
					buffer nextPut: char 
				].
		]
	].
	
	self endOfLineReached.