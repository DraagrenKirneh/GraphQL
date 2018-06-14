accessing
args

	<gqlQuery: 'args: [__InputValue!]!'>
	
	^ object args collect: [ :each | Gql__InputValue wrap: each ]