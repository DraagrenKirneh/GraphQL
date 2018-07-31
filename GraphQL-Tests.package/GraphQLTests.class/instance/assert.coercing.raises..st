asserting
assert: aType coercing: anObject raises: aResult

	self should: [(aType coerce: anObject)] raise: aResult