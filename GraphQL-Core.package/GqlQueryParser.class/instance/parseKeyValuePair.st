parse - value
parseKeyValuePair

	| key |
	
	key := self parseName.
	
	self expectColon.
		
	^ key -> self parseValue