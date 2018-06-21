parse - value
skipTrailingCommas

	(reader peekFor: $,) ifFalse: [ ^ false ].
	
	[ self peekFor: $, ] whileTrue.

	^ true