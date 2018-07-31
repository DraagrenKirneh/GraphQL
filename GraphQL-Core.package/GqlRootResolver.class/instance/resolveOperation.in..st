resolving
resolveOperation: anOperation in: aContext
	
	object gqlAboutToResolve: anOperation in: aContext.

	^ self resolveField: anOperation from: object in: aContext 