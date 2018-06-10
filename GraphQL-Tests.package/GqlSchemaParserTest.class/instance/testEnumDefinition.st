tests
testEnumDefinition
	
	| def |
	
	self initOn: '
		enum USER_STATE {
 			NOT_FOUND
 			ACTIVE
 			INACTIVE
 			SUSPENDED
		}
	'.
	
	parser skipWhitespaceAndComments.
	def := parser parseDefinition.
	
	self 
		assert: def class 				equals: GqlSchemaEnumDefinition;
		assert: def name 				equals: 'USER_STATE';
		assert: def fields asArray 	equals: #('NOT_FOUND' 'ACTIVE' 'INACTIVE' 'SUSPENDED')
	
	
	