resolving
resolveField: aField from: aParent in: anExecutionContext
		
	| resolvedArgs args object |

	resolvedArgs := anExecutionContext getArgs: aField arguments.
	args := self argsFromMap: resolvedArgs.
	
	object := aParent perform: selector withArguments: { args . anExecutionContext }.
	
	field type verify: object.
	
	^ field type resolve: object from: aField in: anExecutionContext		
