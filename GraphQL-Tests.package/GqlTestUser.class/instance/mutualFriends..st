accessing
mutualFriends: aLimit

	<gqlField: 'mutualFriends(first: Int!): [User!]!'>
	
	^ Array hnStreamContents: [ :writer |
		aLimit timesRepeat: [ writer put: self class randomUser ]
	]