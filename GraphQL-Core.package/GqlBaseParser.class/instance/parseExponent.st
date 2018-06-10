parsing - numerical
parseExponent

	| number negated |
	
	negated := reader peekFor: $-.
	negated ifFalse: [ reader peekFor: $+ ].
	
	number := self parseInteger.
	negated ifTrue: [ number := number negated ].
	
	^ 10 raisedTo: number