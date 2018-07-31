resolving
argsFromMap: aCollection
	
	| dct |
	
	dct := Dictionary new.
	
	self args do: [ :argument | | value |		
		value := (aCollection at: argument name 
			ifPresent: [ :val | val value ] 
	 	 	ifAbsent: [ argument defaultValue ]).
			
		dct at: argument name put: value	
			
	].

	^ dct