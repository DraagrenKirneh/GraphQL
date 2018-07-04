as yet unclassified
typeField

	^ self new 
		name: '__type';
		type: '__Type';
		value: [ :p :a :c | Gql__Type type: (a at: 'name') context: c ]

	