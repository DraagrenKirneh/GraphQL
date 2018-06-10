parsing
parseVariableDefinitionList

	( self peekFor: $( ) ifFalse: [ ^ #() ].

	^ self parseCommaListUsing: #parseVariableDefinition until: $)