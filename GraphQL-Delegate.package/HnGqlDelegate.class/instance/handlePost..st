public
handlePost: aRequest
	
	| result response payload query output vars |
	
	payload := STONJSON fromString: aRequest contents.
	vars := payload at: 'variables' ifAbsent: [ nil ].
	query := payload at: 'query'.

	result := graphql execute: query variables: vars.
	
	output := STONJSON toString: result.
	response := ZnResponse ok: (ZnStringEntity json: output).
	self setCorsHeaders: response.

	^ response	
