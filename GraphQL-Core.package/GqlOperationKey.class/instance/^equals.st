accessing
= anotherObject

	^ self class == anotherObject class and: [ 
		operation = anotherObject operation and: [ 
			name = anotherObject name	
		]
	]