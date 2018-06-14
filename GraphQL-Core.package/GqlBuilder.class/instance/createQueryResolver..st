private
createQueryResolver: anObject

	| resolver |
	
	resolver := self rootResolverFor: anObject type: #gqlQuery field: #gqlQuery:.
	
	resolver 	ifNotNil: [ operations addQuery: resolver ].
	
	
	
	