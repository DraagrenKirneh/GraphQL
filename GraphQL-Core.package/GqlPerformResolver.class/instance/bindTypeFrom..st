binding
bindTypeFrom: aDictionary

	type ifNil: [ self error ].
	type isSymbol ifTrue: [ 
		type := aDictionary at: type	
	].