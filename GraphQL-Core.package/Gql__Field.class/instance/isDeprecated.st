accessing
isDeprecated

	<gqlQuery: 'isDeprecated: Boolean'>
	
	^ object directives anySatisfy: [ :dir | 
		dir name = 'deprecated' 
	]