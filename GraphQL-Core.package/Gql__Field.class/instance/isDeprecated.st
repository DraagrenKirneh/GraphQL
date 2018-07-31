accessing
isDeprecated

	<gqlField: 'isDeprecated: Boolean'>
	
	^ object directives anySatisfy: [ :dir | 
		dir name = 'deprecated' 
	]