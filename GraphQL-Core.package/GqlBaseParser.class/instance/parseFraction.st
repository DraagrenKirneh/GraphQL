parsing - numerical
parseFraction

	| number power |
	
	number := 0.
	power := 1.0.
	
	[ reader atEnd not and: [ reader peek isDigit ] ] whileTrue: [
		number := 10 * number + reader next digitValue.
		power := power * 10.0.
	].

	^ number / power