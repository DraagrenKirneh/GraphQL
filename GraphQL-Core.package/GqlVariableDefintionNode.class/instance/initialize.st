accessing
initialize

	super initialize.
	
	" 
		default value is set to self as an unique marker 
	 	for an unset field, since it can be nil
	"
	defaultValue := self 