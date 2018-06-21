parsing
parseArgumentList

	| list |
	
	( self peekFor: $( ) ifFalse: [ ^ #() ].
	
	list := OrderedCollection new.
	
	reader untilEnd: [ 
		(self peekFor: $) ) ifTrue: [ ^ list ].	
		list ifNotEmpty: [ self expectComma ].
		list add: self parseArgument
	].

	self endOfLineReached