accessing
makeArrayField: aBlock

	| item |
	
	item := GqlCustomResolver new.
	item resolveArray.
	aBlock value: item.
	
	self addField: item