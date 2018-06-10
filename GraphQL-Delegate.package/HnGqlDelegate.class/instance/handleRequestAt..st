public
handleRequestAt: aRequestIterator

	aRequestIterator method == #OPTIONS ifTrue: [ ^ self handleOptions: aRequestIterator ].
	aRequestIterator method == #POST ifTrue: [ ^ self handlePost: aRequestIterator ].
	
	^ aRequestIterator asResponseMethodNotAllowed 