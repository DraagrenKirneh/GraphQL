parsing
parseArgumentDefinitions
	
	| items |
		
	self peekFor: $|.
	
	items := Array hnStreamContents: [ :writer | | def |
		[ (def := self parseName) = 'on' ] whileFalse: [ 
			writer << def.
			self expectChar: $|
		].
	].

	^ items