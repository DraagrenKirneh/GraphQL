instance creation
on: aStringOrStream

	^ self new 
		reader: aStringOrStream hnReadstream;
		yourself