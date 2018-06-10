parsing
parseSelectionSet
	
	self expectChar: ${.
	
	^ self parseListUsing: #parseSelection until: $}
