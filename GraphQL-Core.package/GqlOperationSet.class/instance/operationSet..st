as yet unclassified
operationSet: anOperation
	
	anOperation isQuery ifTrue: [ ^ query ].
	anOperation isMutation ifTrue: [ ^ mutation ].
	anOperation isSubcription ifTrue: [ ^ subscription ].
	
	self error