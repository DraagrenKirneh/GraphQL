parsing - argument
parseDirectiveList
		
	^ Array hnStreamContents: [ :stream | 
		[ self peekFor: $@ ] whileTrue: [ 
			stream put: self parseDirective
		]
	]
	