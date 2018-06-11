resolving
resolveObject: anObject from: aQueryField in: anExecutionContext 

	| writer |

	writer := GqlObjectWriter new
		parent: anObject;
		context: anExecutionContext;
		resolver: self.
	
	aQueryField selections do: [ :selection | 
		writer writeSelection: selection.
	].
	
	^ writer output