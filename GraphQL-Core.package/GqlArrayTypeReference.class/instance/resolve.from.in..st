as yet unclassified
resolve: aCollection from: aField in: aContext

	^ aCollection collect: [ :each |
		subType resolve: each from: aField in: aContext 		
	] as: Array
