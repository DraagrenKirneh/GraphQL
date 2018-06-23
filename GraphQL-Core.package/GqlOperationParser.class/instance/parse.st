parsing
parse

	| operation name field |
	
	operation := self parseName.
	name := self parseName.
	field := GqlTypeParser parseField: reader.
	
	^ { operation . name . field }