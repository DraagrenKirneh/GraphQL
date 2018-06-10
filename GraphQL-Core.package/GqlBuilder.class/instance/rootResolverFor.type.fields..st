private
rootResolverFor: anObject type: aSymbol fields: aCollection

	| alias resolver fields |
	
	alias := self performPragma: aSymbol in: anObject.
	alias ifNil: [ ^ nil ].
	
	fields := self fieldResolversFor: aCollection in: anObject class.
	
	resolver := GqlRootResolver named: alias.
	resolver 
		object: anObject;
		addFields: fields.

	^ resolver