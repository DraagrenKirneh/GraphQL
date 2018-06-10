accessing
args

	<gqlQuery: #args args: #() listType: #__InputValue>
	
	^ object args collect: [ :each | Gql__InputValue wrap: each ]