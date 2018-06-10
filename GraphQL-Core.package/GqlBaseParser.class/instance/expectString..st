expecting
expectString: aString

	(reader next: aString size) = aString ifFalse: [ 
		self error: 'expected: ' , aString	
	].