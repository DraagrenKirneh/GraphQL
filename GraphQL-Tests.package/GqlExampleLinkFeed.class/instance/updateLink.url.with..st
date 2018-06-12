mutation
updateLink: anId url: anUrl with: aDescription
	
	<gqlMutation: #updateLink args: #((id ID) (url String) (description String '')) type: #Link>
	
	| link |
	
	link := self linkAt: anId.
	link url: anUrl.
	link description: aDescription.
	
	^ link