parsing
parse

	| operation name field |
	
	operation := self parseName.
	name := self parseName.
	field := GqlTypeParser parseField: reader.
	
	^ (GqlOperationKey operation: operation name: name) -> field