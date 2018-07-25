as yet unclassified
createDelegate

	| gql |

	gql := GqlBuilder new
 		types: { GqlExampleLink . GqlExampleUser . GqlExampleVote };
		roots: { GqlExampleLinkFeed new . GqlExampleLogin new };
		build.
	
	^ HnGqlDelegate new
	 	graphql: gql;
		yourself