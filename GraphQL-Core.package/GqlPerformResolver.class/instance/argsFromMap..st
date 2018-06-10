as yet unclassified
argsFromMap: aCollection
	
	^ args collect: [ :each | 
		aCollection at: each 
			ifPresent: [ :val | val value ] 
	 	 	ifAbsent: [ defaults at: each ]
	] as: Array 