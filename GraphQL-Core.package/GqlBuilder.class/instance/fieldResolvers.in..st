private
fieldResolvers: aSymbol in: aClass
	
	^ (Pragma allNamed: aSymbol from: aClass to: Object) 
		collect: [ :pragma | GqlPerformResolver fromPragma: pragma ]
