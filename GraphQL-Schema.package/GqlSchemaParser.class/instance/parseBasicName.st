parsing - basic
parseBasicName
	
	reader peek isLetter ifFalse: [ ^ self transferBuffer ].
	reader peekDo: [ :nextChar |
		(nextChar isAlphaNumeric or: [ nextChar = $_ ])
			ifTrue: [ buffer nextPut: nextChar ]
			ifFalse: [ ^ self transferBuffer ]
	].

	^ self transferBuffer ifEmpty: [ 
		self unexpectedEnding
	]
