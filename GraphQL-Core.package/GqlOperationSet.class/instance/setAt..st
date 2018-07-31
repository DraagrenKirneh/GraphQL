initialization
setAt: aName
	
	aName = 'query' ifTrue: [ ^ query ].
	aName = 'mutation' ifTrue: [ ^ mutation ].
	aName = 'subscription' ifTrue: [ ^ subscription ].
	
	self error