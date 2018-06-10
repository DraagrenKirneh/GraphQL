skipping
skipWhitespace

	reader untilEnd: [ 
		reader peek isSeparator ifFalse: [ ^ self ]	.
		reader skip
	].
