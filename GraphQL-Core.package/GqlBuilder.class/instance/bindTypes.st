building
bindTypes

	resolvers do: [ :each | 
		each bindTypeFrom: resolvers.
		self bindMetaFieldsIn: each
	].
	
	operations resolversDo: [ :each | each bindTypeFrom: resolvers ].