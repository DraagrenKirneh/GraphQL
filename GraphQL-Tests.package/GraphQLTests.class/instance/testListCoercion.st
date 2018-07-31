tests
testListCoercion

	| type arr arr2 |	
	
	type := GqlTypeParser parse: '[int]'.
	arr := { 1 . 2 . 3 }.
	
	self
		assert: type coercing: arr equals: arr; 
		"assert: type coercing: { 1 . '2' . true } raises: GqlCoercionError;"
		assert: type coercing: 1 equals: { 1 }; 
		assert: type coercing: nil equals: nil.
		
	type := GqlTypeParser parse: '[[int]]'.
	
	arr2 := { { 1 } .  { 2 . 3 } }. 
	
	self
		assert: type coercing: arr2 equals: arr2; 
		assert: type coercing: arr raises: GqlCoercionError;
		assert: type coercing: 1 equals: { { 1 } }; 
		assert: type coercing: nil equals: nil.
		