as yet unclassified
schemaField

	^ self new 
		name: '__schema';
		type: '__Schema';
		value: [ :p :a :c | Gql__Type type: (a at: 'name') context: c ]

	