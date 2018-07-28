tests
testListAndNonNullCoercion

	| type arr |	
	
	type := GqlTypeParser parse: '[int]'.
	arr := { 1 . 2 . 3 }.
	
	self
		assert: type coercing: arr equals: arr; 
		assert: type coercing: nil equals: nil;
		assert: type coercing: { 1 . 2 . nil } equals: { 1 . 2 . nil }. 
		"assert: type coercing: { 1 . 2 . GqlError new } equals: { 1 . 2 . nil }." 
		
	type := GqlTypeParser parse: '[int]!'.
	
	self
		assert: type coercing: arr equals: arr; 
		assert: type coercing: nil raises: GqlCoercionError;
		assert: type coercing: { 1 . 2 . nil } equals: { 1 . 2 . nil }. 
		"assert: type coercing: { 1 . 2 . GqlError new } equals: { 1 . 2 . nil }." 
		
	type := GqlTypeParser parse: '[int!]'.
	
	self
		assert: type coercing: arr equals: arr; 
		assert: type coercing: nil equals: nil.
		"assert: type coercing: { 1 . 2 . nil } equals: { 1 . 2 . nil }. "
		"assert: type coercing: { 1 . 2 . GqlError new } equals: { 1 . 2 . nil }." 
	
	type := GqlTypeParser parse: '[int!]!'.
	
	self
		assert: type coercing: arr equals: arr; 
		assert: type coercing: nil raises: GqlCoercionError
		"assert: type coercing: { 1 . 2 . nil } equals: { 1 . 2 . nil }. "
		"assert: type coercing: { 1 . 2 . GqlError new } equals: { 1 . 2 . nil }." 
	
	
	
