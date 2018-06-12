accessing
type: aType
	
	type := (type isKindOf: GqlTypeReference) 
		ifTrue: [ type ]
		ifFalse: [ GqlTypeParser parse: aType ]