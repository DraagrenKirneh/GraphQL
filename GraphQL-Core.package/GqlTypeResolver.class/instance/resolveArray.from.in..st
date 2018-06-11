resolving
resolveArray: aValue from: aField in: aContext 
	
	^ aValue collect: [ :each |
		self resolveObject: each from: aField in: aContext 		
	] as: Array