parsing
parseSelection

	| token |
	
	token := self parseName.
	token ifEmpty: [ 
		(self peekAll: '...') 
			ifTrue: [ ^ self parseDottedFragment ]
			ifFalse: [ self error: 'Unknown characters' ]
	].
	token = 'fragment' ifTrue: [ ^ self parseFragment ].
		
	^ self parseField: token	
