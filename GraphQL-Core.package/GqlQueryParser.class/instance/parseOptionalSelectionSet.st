parsing
parseOptionalSelectionSet
	
	( self peekFor: ${ ) ifFalse: [ ^ #() ].
	
	^ self parseListUsing: #parseSelection until: $}
