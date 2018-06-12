accessing
rootResolver

	^ GqlRootResolver new 
		name: 'dice';
		makeField: [ :field |
			field 
				name: #getDie; 
				type: self gqlAlias; 
				value: [ :r :a :c | GqlExRandomDie sides: (a at: #numSides) ].
		].