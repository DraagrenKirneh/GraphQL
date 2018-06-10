printing
printOn: aStream

	super printOn: aStream.
	
	aStream space.
	
	self printInfoOn: aStream.
	