public
handlePost: reqIt
	
	| result response payload query output vars |
	
	(reqIt request entity contentType matches: ZnMimeType multiPartFormData)
		ifTrue: [ ^ self handleMultipart: reqIt request ].
	
	payload := STONJSON fromString: reqIt request contents.
	vars := payload at: 'variables' ifAbsent: [ nil ].
	query := payload at: 'query'.

	
	[  
		result := graphql execute: query variables: vars request: reqIt request.
	] on: GqlUnauthorized do: [ | r | 
		r := ZnResponse custom401.
		self setCorsHeaders: r.
		^ r
	].

	output := STONJSON toString: result.
	response := "ZnResponse ok: (ZnStringEntity json: output)." ZnResponse unauthorized.
	self setCorsHeaders: response.

	^ response	