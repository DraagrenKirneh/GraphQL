accessing
peekFor: aCharacter

	self skipWhitespace.
	
	^ reader peekFor: aCharacter 