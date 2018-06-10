as yet unclassified
createDelegate

	| gql |

	gql := GqlBuilder new
 		classes: { GqlExampleLink };
		roots: { self new };
		build.
	
	^ HnGqlDelegate new
	 	graphql: gql;
		yourself