as yet unclassified
buildRoot: aRootObject

	| pragmas root |
	
	pragmas := Pragma allNamed: #gqlOperation: from: aRootObject class to: Object.	
	pragmas do: [ :each | | op field |
		op := (GqlOperationParser parse: each arguments first).	
		root := lut at: op first -> op second ifAbsentPut: [ 
			GqlRootResolver new  
				name: op second;
				object: aRootObject;
				yourself	
	 	].
		
		field := GqlPerformResolver fromField: op third selector: each methodSelector.
		root addField: field.
	].

	^ lut
