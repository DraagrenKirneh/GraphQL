parsing
parseTypeCondition

	self skipWhitespaceAndComments.
	
	"(self peekFor: $@) ifTrue: [ 
		^ self parseDirective
	]."
	
	^ (self peekAll: 'on') 
		ifTrue: [
			self expectSeparator.
			self parseType
	 	]
		ifFalse: [ nil ]

	