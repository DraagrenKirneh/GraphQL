private
createSubscriptionResolver: anObject 
	
	| resolver |
	
	resolver := self rootResolverFor: anObject 
		type: #gqlSubscription
		fields: self subscriptionKeywords.
	
	resolver 	ifNotNil: [ operations addSubscription: resolver ].