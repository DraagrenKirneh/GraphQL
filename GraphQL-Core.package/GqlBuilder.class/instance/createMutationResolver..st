private
createMutationResolver: anObject 
	
	| resolver |
	
	resolver := self rootResolverFor: anObject 
		type: #gqlMutation 
		field: #gqlMutation:.
	
	resolver 	ifNotNil: [ operations addMutation: resolver ].