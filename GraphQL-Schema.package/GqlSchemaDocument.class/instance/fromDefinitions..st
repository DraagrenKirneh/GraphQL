instance creation
fromDefinitions: aCollection

	aCollection do: [ :each |
		aCollection acceptVisitor: self	
	]