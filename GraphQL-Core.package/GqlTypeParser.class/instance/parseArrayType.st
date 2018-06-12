parsing
parseArrayType

	| arrayType |
	
	arrayType := GqlArrayTypeReference subType: self parseType. "only namned??"
	
	self expectRightBracket.
	
	^ arrayType 