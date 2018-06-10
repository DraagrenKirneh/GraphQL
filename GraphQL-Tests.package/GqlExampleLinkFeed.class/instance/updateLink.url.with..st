mutation
updateLink: anId url: anUrl with: aDescription
	
	<gqlMutation: #updateLink args: #(id url description) type: #Link>
	
	| link |
	
	link := self linkAt: anId.
	anUrl ifNotNil: [ link url: anUrl ].
	aDescription ifNotNil: [ link description: aDescription ].
	
	^ link