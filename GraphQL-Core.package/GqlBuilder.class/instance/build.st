building
build

	classes 
		collect: [ :each |	self createTypeResolver: each ]
		thenDo: [ :each | resolvers at: each name put: each ].
	
	rootObjects do: [ :each | self buildRoot: each ].

	lut associationsDo: [ :assoc | | dct |
		dct := operations setAt: assoc key operation.
		dct at: assoc key name put: assoc value.
		assoc key operation = 'query' ifTrue: [ assoc value addMetaFields ]
	].

	self bindTypes.

	^ GraphQL new 
		operations: operations;
		types: resolvers