| links feed schema gql link result json |

links := { 1 . 2 . 3. 4 }.

feed := Gql_Resolver named: #feed.
feed makeField: [ :f |
	f name: #info; value: 'Hello World'
	
].
feed makeField: [ :f |
	f name: #links; type: #Link; value: links
].

link := Gql_Resolver named: #Link.
link makeField: [ :f |
	f name: #item; value: [ :c | c yourself ]
].

schema := GqlSchema new.
schema addQuery: feed.
schema addQuery: (Gql_Resolver named: #stuff).
schema addType: link.


gql := GraphQL new.
gql schema: schema.

result := gql query: 'query { 
	feed { links { item } } 
		
}'.

STONJSON toStringPretty: result
