tests
testMutationType
	
	| def |
	
	self initOn: '
		type Mutation {
			 users(params: ListUsersInput): [User]!
		}
	'.
	
	parser skipWhitespaceAndComments.
	def := parser parseDefinition.
	
	
	
	