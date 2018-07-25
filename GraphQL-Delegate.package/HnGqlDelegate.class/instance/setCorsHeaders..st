initialization
setCorsHeaders: aResponse

	aResponse headers 	
		at: 'Access-Control-Allow-Origin'  put: 'http://localhost:3000';
		at: 'Access-Control-Allow-Credentials' put: 'true';
		at: 'Access-Control-Allow-Methods' put: 'POST, OPTIONS';
		at: 'Access-Control-Allow-Headers' put: 'Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With'.