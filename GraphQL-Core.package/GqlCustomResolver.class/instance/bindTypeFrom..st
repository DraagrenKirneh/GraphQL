binding
bindTypeFrom: aDictionary

	type isSymbol ifTrue: [ 
		type := aDictionary at: type	
	].