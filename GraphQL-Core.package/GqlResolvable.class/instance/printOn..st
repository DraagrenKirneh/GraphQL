printing
printOn: aStream

	super printOn: aStream.
	
	aStream << ' ('; << (name ifNil: ''); << ')'