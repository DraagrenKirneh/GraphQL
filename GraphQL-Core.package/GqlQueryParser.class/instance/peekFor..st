accessing
peekFor: aCharacter

	self skipWhitespaceAndComments.
	
	^ reader peekFor: aCharacter 