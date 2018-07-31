initialization
initialize

	super initialize.
	
	fields := Dictionary new.
	self addField: GqlCustomResolver typenameResolver