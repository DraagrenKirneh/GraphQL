private
executeOperation: anOperation variables: aDictionary request: aRequest

	| executionContext resolver |
	
	executionContext := GqlExecutionContext new
		userContext: context copy;
		variables: aDictionary;
		operation: anOperation;
		request: aRequest;
		schema: self.
	
	resolver := operations resovlerFor: anOperation.		
	
	^ resolver resolveOperation: anOperation in: executionContext
	