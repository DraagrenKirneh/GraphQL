accessing
friends: aLimit

	<gqlField: 'friends(first: Int!): [User!]!'>
	
	^ Array hnStreamContents: [ :writer |
		aLimit timesRepeat: [ writer put: self class randomUser ]
	]