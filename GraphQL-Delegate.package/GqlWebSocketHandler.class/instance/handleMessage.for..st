public
handleMessage: aMessage for: aWebSocket

	| dct type |
	
	dct := STONJSON fromString: aMessage.
	
	type := dct at: 'type'.
	type = 'connection_init' ifTrue: [ aWebSocket sendMessage: (STONJSON toString: (self acceptConnection: dct )). ^ self ].
	type = 'connection_terminate' ifTrue: [ ^ self unregister: aWebSocket ].
	type = 'start' ifTrue: [ self haltOnce ].
	
	type = 'stop' ifTrue: [  ]