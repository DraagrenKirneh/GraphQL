tests
testHelloWorld

	| root blr obj dct gql |

	root := GqlRootResolver anonymous.
	root makeField: [ :f | f name: #hello; asStringScalar; value: #world ].
		
	gql := GqlBuilder new
		addQuery: root;
		build.

	obj := gql execute: '{ hello }'.
	dct := Dictionary with: ('data' -> (Dictionary with: ('hello' -> 'world'))).
	
	self assert: obj equals: dct