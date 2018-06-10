tests
testScalarDefinition
	
	| def |
	
	self initOn: '
		# define custom Url scalar
		scalar Url
	'.
	
	parser skipWhitespaceAndComments.
	def := parser parseDefinition.
	
	self 
		assert: def class 	equals: GqlSchScalarDefinition;
		assert: def name	equals: 'Url'
	
	
	