accessing
value: aValue

	(value includes: aValue) ifFalse: [ self error ].
	
	value := aValue 