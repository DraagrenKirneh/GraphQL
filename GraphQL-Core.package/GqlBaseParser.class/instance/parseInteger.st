parsing - numerical
parseInteger

	| number |
	
	number := 0.
	
	reader untilEnd: [ 
		reader peek isDigit ifFalse: [ ^ number ].
		number := 10 * number + reader next digitValue
	].
	
	^ number