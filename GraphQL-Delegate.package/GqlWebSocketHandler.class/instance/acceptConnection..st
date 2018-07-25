public
acceptConnection: aDictionary

	| return |
	
	aDictionary inspectOnce.
	
	^ { 
		'type' -> 'connection_ack'.		
	} asDictionary