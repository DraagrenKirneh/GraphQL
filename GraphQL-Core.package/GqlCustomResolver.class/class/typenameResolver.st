as yet unclassified
typenameResolver

	^ self new 
		name: '__typename';
		type: 'String';
		value: [ :p :a :c | p class gqlAlias ]