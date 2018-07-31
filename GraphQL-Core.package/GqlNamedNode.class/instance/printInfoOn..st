printing
printInfoOn: aStream

	name ifNotNil: [ 
		aStream << '( ' << name; << ' )'
	]