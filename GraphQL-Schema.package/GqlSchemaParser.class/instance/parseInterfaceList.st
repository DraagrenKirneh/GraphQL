definition
parseInterfaceList

	| interaces |
	
	interaces := OrderedCollection new.
	
	reader untilEnd: [ 
		interaces add: self parseName.
		(self peekFor: $, ) ifFalse: [ ^ interaces ]	
	].

	self endOfLineReached