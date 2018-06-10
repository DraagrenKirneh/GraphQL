private
createQueryResolver: anObject

	| resolver |
	
	resolver := self rootResolverFor: anObject 
		type: #gqlQuery 
		fields: self queryKeywords.
	
	resolver 	ifNotNil: [ operations addQuery: resolver ].
	
	
	
	