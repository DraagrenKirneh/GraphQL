private
rootResolverFor: anObject type: aTypeSelector field: aFieldSelector

	| alias resolver fields |
	
	alias := self performPragma: aTypeSelector in: anObject.
	alias ifNil: [ ^ nil ].
	
	fields := self fieldResolvers: aFieldSelector in: anObject class.
	
	resolver := GqlRootResolver named: alias.
	resolver 
		object: anObject;
		addFields: fields.

	^ resolver