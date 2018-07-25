mutation
post: anUrl with: description
		
	<gqlOperation: 'mutation PostMutation post(url: String!, description: String): Link'>
	
	| link |

	link := GqlExampleLink new 
		url: anUrl;
		description: description;
		yourself.
		
	feed at: link id put: link.
	
	^ link 
	