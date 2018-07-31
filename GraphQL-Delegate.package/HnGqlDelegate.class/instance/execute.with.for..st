private
execute: aQuery with: aDictionary for: aRequest
	
	| result output response|
		
	[  
		result := graphql execute: aQuery variables: aDictionary request: aRequest
	] on: GqlUnauthorized do: [ | r | 
		r := ZnResponse custom401.
		self setCorsHeaders: r.
		^ r
	].

	output := STONJSON toString: result.
	response := ZnResponse ok: (ZnStringEntity json: output).
	self setCorsHeaders: response.

	^ response	