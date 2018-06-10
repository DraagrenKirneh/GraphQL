types
parseArrayType

	| arrayType |
	
	arrayType := GqlSchemaArrayType subType: self parseType. "only namned??"
	
	self expectRightBracket.
	
	^ arrayType 