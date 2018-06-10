mutation
post: anUrl named: aName with: description
	
	<gqlMutation: #post args: #(url name (description '')) type: #Link>
	
	| link |

	link := GqlExampleLink new 
		url: anUrl;
		name: aName;
		description: description;
		yourself.
		
	feed at: link id put: link.
	
	^ link 