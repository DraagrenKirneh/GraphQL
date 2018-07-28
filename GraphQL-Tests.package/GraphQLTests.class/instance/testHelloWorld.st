tests
testHelloWorld

	| root obj dct gql |

	root := GqlRootResolver anonymous.
	root makeField: [ :f | f name: #hello; forStringScalar; value: #world ].
		
	gql := GqlBuilder new
		addQuery: root;
		build.

	obj := gql execute: '{ hello }'.
	dct := Dictionary with: ('data' -> (OrderedDictionary with: ('hello' -> 'world'))).
	
	self assert: obj equals: dct