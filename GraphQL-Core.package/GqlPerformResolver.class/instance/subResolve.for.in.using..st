instance creation
subResolve: object for: aField in: aContext using: subResolver
	
	^ isList 
		ifTrue: [ type resolveArray: object from: aField in: aContext ]
		ifFalse: [ type resolveObject: object from: aField in: aContext ]