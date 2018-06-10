as yet unclassified
pageTypeResolver

	^ GqlTypeResolver new 
		name: #Page;
		makeField: [ :f | f name: #handle; type: #Int; value: 42 ];
		makeField: [ :f | f name: #likers; type: #Int; value: 24 ];
		yourself