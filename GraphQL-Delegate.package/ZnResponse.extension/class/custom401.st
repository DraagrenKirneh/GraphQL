*GraphQL-Delegate
custom401
	
	^ (self statusLine: ZnStatusLine unauthorized)
		entity: (ZnEntity textCRLF: 'Unauthorized');
		yourself