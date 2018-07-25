as yet unclassified
createVote: aUser

	| vote |
	
	vote := GqlExampleVote new.
	vote user: aUser; link: self.
	
	votes add: vote.
	
	^ vote
	
	