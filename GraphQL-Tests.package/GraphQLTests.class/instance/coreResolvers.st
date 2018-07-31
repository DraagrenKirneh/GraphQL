as yet unclassified
coreResolvers

	^ GqlBuilder new 
		types: { GqlTestUser };
		roots: { GqlTestUser };
		build. 