tests
testType 

	| |
	
	"resolver := Gql__Type .
	introspect := resolver introspect.
	
	self 
		assert: introspect name equals: Gql__Type gqlAlias."