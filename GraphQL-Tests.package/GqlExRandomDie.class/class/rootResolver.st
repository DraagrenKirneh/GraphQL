accessing
rootResolver

	^ GqlRootResolver new 
		name: 'dice';
		makeField: [ :f |
			f name: #getDie; type: self gqlAlias; 
			value: [ :r :a :c | GqlExRandomDie sides: (a at: #numSides) ].
		].