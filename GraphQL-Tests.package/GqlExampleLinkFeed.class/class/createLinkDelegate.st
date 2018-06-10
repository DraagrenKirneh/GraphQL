as yet unclassified
createLinkDelegate

	| gql |

	gql := GqlBuilder new
 		classes: { GqlExampleLink };
		roots: { self new };
		build.
	
	^ HnGqlDelegate new
	 	graphql: gql;
		yourself