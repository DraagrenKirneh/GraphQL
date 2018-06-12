instance creation
fromArray: anArray

	| reader argument |
		
	reader := anArray hnReadstream.
	argument := self new
		name: reader next;
		type: reader next;
		yourself.
	
	reader atEnd ifFalse: [ 
		argument defaultValue: anArray second.
	].

	^ argument 