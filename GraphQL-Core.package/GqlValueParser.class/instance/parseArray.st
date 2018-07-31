parse - value
parseArray

	| col |
	
	col := OrderedCollection new.
	
	[ 
		self skipWhitespaceAndComments.
		(reader peekFor: $]) ifTrue: [ ^ col ].
	
		col add: self parseValue.
		
		self skipWhitespaceAndComments.		
		(reader peekFor: $]) ifTrue: [ ^ col ].
	
		self skipTrailingCommas		
	] whileTrue.

	self unexpectedEnding

