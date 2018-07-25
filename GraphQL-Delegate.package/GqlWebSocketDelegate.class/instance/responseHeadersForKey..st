private
responseHeadersForKey: key
	"Return the headers for a WebSocket setup response, given key"
	
	^ (super responseHeadersForKey: key)
		at: 'Sec-WebSocket-Protocol' put: 'graphql-ws';
		yourself