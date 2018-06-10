tests
testParseMultiUnion
	
	| def |
	
	self initOn: 'union MultipleUnion = Foo | Bar'.
	
	def := parser parseDefinition.
	
	self 
		assert: def class equals: GqlSchUnionDefinition;
		assertCollection: def types asArray equals: #('Foo' 'Bar')