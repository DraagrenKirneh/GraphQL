accessing
makeField: aBlock

	| item |
	
	item := GqlCustomResolver new.
	aBlock value: item.
	
	self addField: item