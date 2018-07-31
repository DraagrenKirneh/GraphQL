as yet unclassified
lookupFieldClass: aKeyword

	(aKeyword == #gqlContextField: or: [ aKeyword == #gqlContextOperation: ])	
		ifTrue: [ ^ GqlFieldResolver ].
		
	(aKeyword == #gqlOperation: or: [ aKeyword == #gqlField: ])	
		ifTrue: [ ^ GqlPerformResolver ].
		
	self error