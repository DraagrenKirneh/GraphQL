accessing
defaultValue

	defaultValue == self ifTrue: [ 
		type nullable ifTrue: [ ^ nil ].
		self error 
	].

	^ defaultValue 