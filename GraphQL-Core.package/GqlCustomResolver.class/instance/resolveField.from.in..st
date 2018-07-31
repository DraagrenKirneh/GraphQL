resolving
resolveField: aField from: aParent in: anExecutionContext
	
	| object args |
	
	args := anExecutionContext getArgs: aField arguments.
	
	object := value gqlResolve: aParent 
		with: args 
		in: anExecutionContext.
	
	type verify: object.
	
	^ type resolve: object from: aField in: anExecutionContext