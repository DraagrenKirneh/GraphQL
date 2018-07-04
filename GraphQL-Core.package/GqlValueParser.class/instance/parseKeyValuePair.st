parse - value
parseKeyValuePair

	| key |
	
	key := self parseName.
	
	self expectColon; skipWhitespace. 
		
	^ key -> self parse