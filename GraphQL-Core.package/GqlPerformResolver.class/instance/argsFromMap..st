resolving
argsFromMap: aCollection
	
	^ args collect: [ :argument | 
		aCollection at: argument name 
			ifPresent: [ :val | val value ] 
	 	 	ifAbsent: [ argument defaultValue ]
	] as: Array 