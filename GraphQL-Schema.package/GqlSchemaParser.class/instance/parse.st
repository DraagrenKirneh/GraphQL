parsing
parse

	[ self skipWhitespaceAndComments. reader atEnd ] whileFalse: [ 
		definitions add: self parseDefinition 
	].

	^ definitions