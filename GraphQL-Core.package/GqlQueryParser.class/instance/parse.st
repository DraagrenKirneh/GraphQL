parsing
parse

	[ self skipWhitespaceAndComments. reader atEnd ] whileFalse: [ 
		document addPart: self parseDefinition 
	].
	
	binder bind.
	
	^ document 