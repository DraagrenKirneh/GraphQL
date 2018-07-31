initialization
initialize

	super initialize.
	
	classes := IdentitySet with: Gql__Type.
	rootObjects := IdentitySet new.	
	resolvers := IdentityDictionary new.
	
	lut := Dictionary new.
	
	GqlScalarResolver defaultResolvers do: [ :each |
		resolvers at: each name put: each	
	].

	operations := GqlOperationSet new.
	
	metaFields := OrderedCollection with: GqlCustomResolver typenameResolver.
	
