typing/selecting keys
search: filter

	<gqlOperation: 'query FeedSearchQuery feed(filter: String!) : [Link]'>
	| res |

	res := FuzzyMatcher 
		allSortedByScoreMatching: filter 
		in: self links 
		by: [ :link | link description ].
		
	res inspect.
	
	^ res