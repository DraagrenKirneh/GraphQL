initialization
initialize

	super initialize.
	
	id := UUID new asString.
	created := DateAndTime now.
	votes := OrderedCollection new.