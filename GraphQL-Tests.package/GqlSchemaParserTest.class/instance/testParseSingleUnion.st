tests
testParseSingleUnion
	
	| def |
	
	self initOn: 'union SingleUnion = Foo'.
	
	def := parser parseDefinition.
	
	self 
		assert: def class equals: GqlSchUnionDefinition;
		assertCollection: def types asArray equals: #('Foo')