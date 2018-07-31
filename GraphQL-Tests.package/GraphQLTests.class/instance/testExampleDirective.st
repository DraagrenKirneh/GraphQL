directive
testExampleDirective

	| dirDef |
	
	dirDef := GqlDirectiveParser parse: 'directive @example on FIELD'.
	
	self 
		assert: dirDef description equals: nil;
		assert: dirDef name equals: 'example';
		assert: dirDef arguments equals: #();
		assert: dirDef locations size equals: 1;
		assert: dirDef locations anyOne equals: 'FIELD'
	 