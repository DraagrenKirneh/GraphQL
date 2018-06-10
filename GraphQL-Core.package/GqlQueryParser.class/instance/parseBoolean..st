parse - value
parseBoolean: aBoolean 

	| ending |
	
	ending := aBoolean ifTrue: [ 'rue' ] ifFalse: [ 'alse' ].

	(ending next: ending size) = ending ifFalse: [ 
		self error: 'expected: ', ending.	
	].
	
	ending next isSeparator ifFalse: [ 
		self error: 'expected separator after boolean literal'	
	].

	^ aBoolean 