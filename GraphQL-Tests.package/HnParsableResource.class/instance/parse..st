parsing
parse: aSelector

	| input |
	
	input := self perform: aSelector.
	
	self parserClass parse: input	