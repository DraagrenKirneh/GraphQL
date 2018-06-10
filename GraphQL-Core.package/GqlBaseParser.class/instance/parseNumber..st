parsing - numerical
parseNumber: integerPart

	| number |
	
	number := integerPart.
	
	(reader peekFor: $.) ifTrue: [ 
		number := number + self parseFraction
	].
	((reader peekFor: $e) or: [ (reader peekFor: $E) ]) ifTrue: [ 
		number := number asFloat * self parseExponent
	].
	
	^ number