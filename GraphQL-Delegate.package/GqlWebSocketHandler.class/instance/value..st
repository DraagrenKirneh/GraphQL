public
value: webSocket
	"I implement a simple chat room service as a server:
	distributing incoming messages to all known clients"
	
	[
		self register: webSocket.
		webSocket runWith: [ :message |
			self handleMessage: message for: webSocket.
		] 
	
	] on: ConnectionClosed do: [ self unregister: webSocket ]