as yet unclassified
forType: aString
	
	aString = 'query' ifTrue: [ ^ self new beQuery ].
	aString = 'mutation' ifTrue: [ ^ self new beMutation ].
	aString = 'subscription' ifTrue: [ ^ self new beSubcription ].
	
	^ self error: 'unknown type'