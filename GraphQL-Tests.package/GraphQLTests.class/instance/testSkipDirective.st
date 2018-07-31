directive
testSkipDirective

	| dirDef |
	
	dirDef := GqlDirectiveParser parse: 'directive @skip(if: Boolean!) on FIELD | FRAGMENT_SPREAD | INLINE_FRAGMENT'.
	
	self 
		assert: dirDef description equals: nil;
		assert: dirDef name equals: 'skip';
		assert: dirDef arguments size equals: 1;
		assert: dirDef locations size equals: 3;
		assert: dirDef locations equals: {'FIELD' . 'FRAGMENT_SPREAD' . 'INLINE_FRAGMENT' }
	 