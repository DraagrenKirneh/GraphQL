accessing
login: anEmail password: aPassword
		
	<gqlOperation: 'mutation LoginMutation login (email: String!, password: String!) : User'>
	
	^ GqlExampleUser new 