definition
parseUnionTypes

	| types |
		
	types := OrderedCollection new.
	reader untilEnd: [ 
		types add: self parseName.
		(self peekFor: $| ) ifFalse: [ ^ types ].
	].

	self endOfLineReached 
	