mutation
post: anUrl named: aName with: description
		
	<gqlOperation: 'mutation PostMutation post(url: String!, name: String!, description: String): Link'>
	
	| link |

	link := GqlExampleLink new 
		url: anUrl;
		name: aName;
		description: description;
		yourself.
		
	feed at: link id put: link.
	
	^ link 
	