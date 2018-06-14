private
createSubscriptionResolver: anObject 
	
	| resolver |
	
	resolver := self rootResolverFor: anObject 	type: #gqlSubscription field: #gqlSubscription:.
	
	resolver 	ifNotNil: [ operations addSubscription: resolver ].