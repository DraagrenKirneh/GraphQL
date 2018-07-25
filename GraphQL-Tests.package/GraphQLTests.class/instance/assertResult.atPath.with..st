asserting
assertResult: aResult atPath: aPath with: aBlock

	| node |
	
	node := aResult.
	aPath do: [ :each |
		node := node at: each	
	].
	
	aBlock value: node