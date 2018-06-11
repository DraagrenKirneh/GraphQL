resolving
subResolve: object for: aField in: aContext using: subResolver
	
	^ forArray 
		ifTrue: [ subResolver resolveArray: object from: aField in: aContext ]
		ifFalse: [ subResolver resolveObject: object from: aField in: aContext ]