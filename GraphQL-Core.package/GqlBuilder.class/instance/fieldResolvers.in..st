private
fieldResolvers: aCollection in: aClass
	
	^ (Pragma allIn: aCollection from: aClass to: Object) collect: [ :pragma | 
			(self lookupFieldClass: pragma keyword) fromPragma: pragma 
		]
