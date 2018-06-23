public
handlePost: reqIt
	
	| result response payload query output vars |
	
	payload := STONJSON fromString: reqIt request contents.
	vars := payload at: 'variables' ifAbsent: [ nil ].
	query := payload at: 'query'.
	payload inspectOnce.
	
		
	result := graphql execute: query variables: vars.
	result crLog.
	output := STONJSON toString: result.
	response := ZnResponse ok: (ZnStringEntity json: output).
	self setCorsHeaders: response.

	^ response	
