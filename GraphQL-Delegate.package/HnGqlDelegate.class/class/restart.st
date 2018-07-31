examples
restart

	<script>

	| map gql graphql websocket |

	gql := GqlBuilder new
 		types: { GqlExampleLink . GqlExampleUser . GqlExampleVote };
		roots: { GqlExampleLinkFeed new . GqlExampleLogin new };
		build.
	
	graphql := HnGqlDelegate new
	 	graphql: gql;
		yourself.
	
	websocket := GqlWebSocketDelegate mock.
	
	map := HzMappingDelegate new
	 	map: 'graphql' toDelegate: graphql;
		map: 'ws' toDelegate: websocket.
	
	ZnServer stopDefault.
	ZnServer startDefaultOn: 8080.
	ZnServer default delegate: map.
