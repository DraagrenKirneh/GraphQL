tests
testLinks

	| gql result id item name |
	
	gql := GqlBuilder new 
		types: { GqlExampleLink . GqlExampleVote . GqlExampleUser };
		roots: { GqlExampleLinkFeed new };
		build.

	result := gql execute: 'mutation PostMutation { 
		post(url: "www.pharo.org", name: "Pharo website", description: "Website for Pharo Smalltalk"){
			id
		}
	}'.
	
	id := { 'data' . 'post' . 'id' } inject: result into: [ :dct :entry |
		dct at: entry	
	].
			
	item := gql execute: 'query FeedQuery\{ 
		link(id: "{1}") \{ 
			name
		}
	}' formatVariables: { id }.
	
	name := { 'data' . 'link' . 'name' } inject: item into: [ :dct :entry |
		dct at: entry	
	].

	self assert: name equals: 'Pharo website'
	