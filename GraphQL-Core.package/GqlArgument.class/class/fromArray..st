instance creation
fromArray: anArray

	| reader argument |
	self halt.
	reader := anArray hnReadstream.
	argument := self new
		name: reader next;
		type: (GqlTypeParser parse: reader next);
		yourself.
	
	reader atEnd ifFalse: [ 
		argument defaultValue: anArray second.
	].

	^ argument 