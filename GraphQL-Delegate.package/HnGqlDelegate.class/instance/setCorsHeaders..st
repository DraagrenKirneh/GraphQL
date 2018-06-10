initialization
setCorsHeaders: aResponse

	aResponse headers 	
		at: 'Access-Control-Allow-Origin'  put: '*';
		at: 'Access-Control-Allow-Methods' put: 'POST, OPTIONS';
		at: 'Access-Control-Allow-Headers' put: 'Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With'.