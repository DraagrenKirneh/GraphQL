execution
getArgs: aCollection

	| dct |
	
	dct := Dictionary new.

	aCollection do: [ :each | | v |
		v := self resolveValue: each value.
		dct at: each name put: v
	].

	^ dct
	