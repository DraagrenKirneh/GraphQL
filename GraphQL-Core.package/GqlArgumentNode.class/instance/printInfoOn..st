printing
printInfoOn: aStream

	aStream << name;
		<< ' : ';
		print: (value ifNil: [' ??? '])