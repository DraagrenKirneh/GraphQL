initialization
initialize

	super initialize.
	
	classes := IdentitySet new.
	rootObjects := IdentitySet new.	
	resolvers := IdentityDictionary new.
	
	lut := Dictionary new.
	
	GqlScalarResolver defaultResolvers do: [ :each |
		resolvers at: each name put: each	
	].

	operations := GqlOperationSet new.