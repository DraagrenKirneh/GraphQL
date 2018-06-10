as yet unclassified
getDie: aNumber

	<gqlQuery: #getDie args: #(numSides) type: #RandomDie>
	
	^ GqlExRandomDie sides: aNumber