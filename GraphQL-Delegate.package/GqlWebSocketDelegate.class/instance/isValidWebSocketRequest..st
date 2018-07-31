testing
isValidWebSocketRequest: request

	^ (super isValidWebSocketRequest: request) and: [ 
		(request headers at: 'Sec-WebSocket-Protocol' ifAbsent: [ ^ false ]) asLowercase = 'graphql-ws'
	]