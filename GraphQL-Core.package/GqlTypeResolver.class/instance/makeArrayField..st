accessing
makeArrayField: aBlock

	| item |
	
	item := GqlArrayResolver new.
	aBlock value: item.
	
	self addField: item