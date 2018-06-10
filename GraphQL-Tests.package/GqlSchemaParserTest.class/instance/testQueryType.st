tests
testQueryType
	
	| def |
	
	self initOn: '
		# root Query type
		type Query {
 			me: User
 			friends(limit: Int = 10): [User]!
			users(limit: Int = 10, sort: String = "asc"): [User]
		}
	'.
	
	parser skipWhitespaceAndComments.
	def := parser parseDefinition.
	
	
	
	