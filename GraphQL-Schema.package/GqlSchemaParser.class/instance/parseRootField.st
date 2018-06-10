parsing
parseRootField

	| key value |
	
	key := self parseName.
		
	self expectColon.
	
	value := self parseName.
		
	^ key -> value