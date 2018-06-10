parse - basic
parseRequiredName
	
	self skipWhitespace.
	
	^ self parseBasicName ifEmpty: [ self error: 'Name is required' ]