mutation
updateLink: anId url: anUrl with: aDescription
	
	<gqlOperation: 'mutation FeedMutation updateLink(id: ID!, url: String, description: String): Link'>
	
	| link |
	
	link := self linkAt: anId.
	link url: anUrl.
	link description: aDescription.
	
	^ link