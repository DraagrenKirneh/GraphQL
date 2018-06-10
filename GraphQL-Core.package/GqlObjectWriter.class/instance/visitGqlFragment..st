visiting
visitGqlFragment: aFragment

	(aFragment check: resolver name) ifFalse: [ ^ self ].
	
	aFragment selections do: [ :each |
		each acceptVisitor: self
	].