private
createMutationResolver: anObject 
	
	| resolver |
	
	resolver := self rootResolverFor: anObject 
		type: #gqlMutation 
		fields: self mutationKeywords.
	
	resolver 	ifNotNil: [ operations addMutation: resolver ].