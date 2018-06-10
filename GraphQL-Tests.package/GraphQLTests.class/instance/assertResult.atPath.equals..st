asserting
assertResult: aResult atPath: aPath equals: anObject

	| node |
	
	node := aResult.
	aPath do: [ :each |
		node := node at: each	
	].

	self assert: node equals: anObject