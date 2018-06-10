public
handleOptions: aRequestIterator 

	| response |

	response := ZnResponse ok: (ZnEntity text: '').
	self setCorsHeaders: response.
	
	^ response