tests
testUserWithEntityType
	
	| def |
	
	self initOn: '
		# User type implements Entity interface
		type User implements Entity {
 			id: ID!
			name: String
 			age: Int
 			balance: Float
 			is_active: Boolean
 			friends: [User]!
 			homepage: Url
		}
	'.
	
	parser skipWhitespaceAndComments.
	def := parser parseDefinition.
	
	
	
	