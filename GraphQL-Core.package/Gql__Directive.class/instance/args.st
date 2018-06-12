accessing
args

	<gqlQuery: #args args: #() type: '[__InputValue]'>
	
	^ object args collect: [ :each | Gql__InputValue wrap: each ]