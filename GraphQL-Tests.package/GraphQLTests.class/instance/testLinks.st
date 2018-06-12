tests
testLinks

	| root links gql link result |

	links := { 1 . 2 . 3 . 4 }.
	root := GqlRootResolver named: #NamedQuery.
	root makeField: [ :f |
		f name: #feed; type: '[Link]'; value: links 
	].

	link := GqlTypeResolver named: #Link.
	link makeField: [ :f |
		f name: #id; forIntScalar; value: [ :c | c yourself ]
	].
		
	gql := GqlBuilder new
		addQuery: root;
		addQuery: (GqlTypeResolver named: #stuff);
		addResolver: link;
		build.

	result := gql execute: 'query NamedQuery { 
		feed { id } 		
	}'.
			
	self assert: result equals: { 'data' -> { 
		'feed' -> (
			{ 1 . 2 . 3 . 4 } collect: [ :each | { 'id' -> each } asDictionary ]
		) } asDictionary 
	} asDictionary
