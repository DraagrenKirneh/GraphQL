printing
printOn: aStream

	super printOn: aStream.
	
	aStream 
		space;
		<< ${;
		space;
		<< type;
		space;
		<< $}