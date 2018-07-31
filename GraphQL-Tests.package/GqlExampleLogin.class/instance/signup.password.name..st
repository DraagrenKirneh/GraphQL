accessing
signup: anEmail password: aPassword name: aName

	<gqlOperation: 'mutation SignupMutation signup (email: String!, password: String!, name: String!) : User'>
	
	^ GqlExampleUser new 