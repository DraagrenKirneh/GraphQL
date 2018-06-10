tests
testInterfaceDefinition

	self parse: '
		# define Entity interface
		interface Entity {
 			id: ID!
			name: String
		}
	'