as yet unclassified
fetchOperation: anOperation

	| dct |
	
	dct := self operationSet: anOperation.
	anOperation name isEmptyOrNil ifTrue: [ 
		dct size = 1 ifFalse: [ self error: 'More than one query' ].
		^ dct anyOne	
	].

	^ dct at: anOperation name