public
handleMessage: aMessage

	| dct type |
	
	dct := STONJSON fromString: aMessage.
	
	type := dct at: 'type'.
	type = 'connection_init' ifTrue: [ ^ self acceptConnection: dct ].
	self halt.
	type = 'connection_terminate' ifTrue: [  ]