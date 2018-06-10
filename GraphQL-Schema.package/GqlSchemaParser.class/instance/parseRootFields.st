parsing
parseRootFields
	
	| fields |
	
	self expectCurlyLeftBracket.
	
	fields := OrderedCollection new.
	
	reader untilEnd: [ 
		(self peekFor: $}) ifTrue: [ ^ fields ].
		fields add: self parseRootField.
	].
	
	^ fields