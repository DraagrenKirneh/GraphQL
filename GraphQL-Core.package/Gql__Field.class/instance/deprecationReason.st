accessing
deprecationReason

	<gqlField: 'deprecationReason : String'>
	
	^ object directives 
		detect: [ :dir | dir name = 'deprecated' ]
		ifFound: [ :dir | dir arguments at: 'reason' ]
	