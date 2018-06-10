parsing
parseMethod: aMethod
	
	| result |
	
	result := true.
	[ self new parse: aMethod selector ] on: Error do: [ :er | result := false. er pass ].
		"on: Error do: [ :ex | result := false. ex pass ]."
		
	self runDict at: aMethod put: result.
	
	self notifyResult: aMethod 