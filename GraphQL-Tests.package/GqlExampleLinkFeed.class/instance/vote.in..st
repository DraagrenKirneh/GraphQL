mutation
vote: anId in: aCtx

	<gqlOperation: 'mutation VoteMutation vote(linkId: ID!) : Vote'>
	
	| user link |
	
	user := GqlExampleUser new.
	user id: anId.
	link := self linkAt: anId.
	
	^ link createVote: user