building
build

	classes 
		collect: [ :each | GqlTypeResolver fromClass: each ]
		thenDo: [ :each | resolvers at: each name put: each ].
	
	rootObjects do: [ :each | 
		self 
			createQueryResolver: each;
			createMutationResolver: each;
			createSubscriptionResolver: each 				
	].

	self bindTypes.

	^ GraphQL new operations: operations