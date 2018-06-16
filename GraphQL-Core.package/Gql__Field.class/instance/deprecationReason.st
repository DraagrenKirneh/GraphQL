accessing
deprecationReason

	<gqlQuery: 'deprecationReason : String'>
	
	^ object directives 
		detect: [ :dir | dir name = 'deprecated' ]
		ifFound: [ :dir | dir arguments at: 'reason' ]
	