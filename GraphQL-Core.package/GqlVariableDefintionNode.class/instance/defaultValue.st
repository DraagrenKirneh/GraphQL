accessing
defaultValue

	defaultValue == self ifTrue: [ 
		self error: 'Missing default value'	
	].

	^ defaultValue 