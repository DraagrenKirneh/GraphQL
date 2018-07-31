parsing
parseDirectiveLocations
	
	| items |
		
	self peekFor: $|.
	
	items := Array hnStreamContents: [ :writer |
		[ (writer put: self parseName) ] doWhileTrue: [ self peekFor: $| ]
	].

	^ items