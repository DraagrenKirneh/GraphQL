definition
parseEnumFields

	| fields |
	
	self expectCurlyLeftBracket.
	
	fields := OrderedCollection new.
	reader untilEnd: [ 
		(self peekFor: $} ) ifTrue: [ ^ fields ].
		fields add: self parseName
	].

	self endOfLineReached 
	