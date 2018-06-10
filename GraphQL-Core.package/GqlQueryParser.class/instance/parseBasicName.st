parse - basic
parseBasicName
	
	| first |
	first := reader peek.
	(first isLetter or: [ first = $_ ]) ifFalse: [ ^ self transferBuffer ].
	reader peekDo: [ :nextChar |
		(nextChar isAlphaNumeric or: [ nextChar = $_ ])
			ifTrue: [ buffer nextPut: nextChar ]
			ifFalse: [ ^ self transferBuffer ]
	].

	^ self transferBuffer ifEmpty: [ 
			self unexpectedEnding
	]
