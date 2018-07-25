accessing
id: anId

	<gqlOperation: 'query testing user(id: ID): User'>
	
	^ self new 
		id: anId;
		name: 'test';
		yourself