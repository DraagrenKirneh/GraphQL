parsing
parseDirectiveLocations
	
	| items |
		
	self peekFor: $|.
	
	items := Array hnStreamContents: [ :writer |
		[ writer << self parseName ] doWhileFalse: [ self peekFor: $| ]
	].

	^ items