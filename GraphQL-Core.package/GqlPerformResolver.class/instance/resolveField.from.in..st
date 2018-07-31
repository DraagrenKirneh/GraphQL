resolving
resolveField: aField from: aParent in: anExecutionContext
		
	| resolvedArgs orderedArgs object |

	resolvedArgs := anExecutionContext getArgs: aField arguments.
	orderedArgs := self argsFromMap: resolvedArgs.
	
	object := aParent perform: selector withEnoughArguments: orderedArgs, { anExecutionContext }.
			
	field type verify: object.		
			
	^ field type resolve: object from: aField in: anExecutionContext		
