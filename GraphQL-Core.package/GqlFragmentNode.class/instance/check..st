validation
check: aName
	
	condition ifNil: [ ^ true ].
	^ condition name = aName 