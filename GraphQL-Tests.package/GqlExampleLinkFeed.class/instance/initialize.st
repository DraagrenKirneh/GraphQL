initialization
initialize

	super initialize.
	
	feed := Dictionary new.
	
	self post: 'vg.no' named: 'vg' with: 'item'.