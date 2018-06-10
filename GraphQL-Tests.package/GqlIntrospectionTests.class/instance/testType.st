tests
testType 

	| resolver introspect |
	
	resolver := Gql__Type asGqlResolver.
	introspect := resolver introspect.
	
	self 
		assert: introspect name equals: Gql__Type gqlAlias.