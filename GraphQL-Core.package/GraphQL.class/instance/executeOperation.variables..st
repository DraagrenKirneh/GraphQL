private
executeOperation: anOperation variables: aDictionary

	| executionContext resolver |
	
	executionContext := GqlExecutionContext new
		userContext: context;
		variables: aDictionary;
		operation: anOperation;
		schema: self.
	
	resolver := operations resovlerFor: anOperation.		
	
	^ resolver resolveOperation: anOperation in: executionContext
	