definition
parseUnion

	| enum |
	
	enum := GqlSchUnionDefinition named: self parseName.
	
	self expectAssignment.
	
	enum types: self parseUnionTypes.
	
	^ enum 