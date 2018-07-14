as yet unclassified
buildRoot: aRootObject

	| pragmas root |
	
	pragmas := Pragma allIn: #(gqlOperation: gqlContextOperation:) from: aRootObject class to: Object.	
	pragmas do: [ :each | | op field |
		op := (GqlOperationParser parse: each arguments first).	
		root := lut at: op key ifAbsentPut: [ 
			GqlRootResolver new  
				name: op key name;
				object: aRootObject;
				yourself	
	 	].
		
		
		field := (self lookupFieldClass: each keyword) fromField: op value selector: each methodSelector.
		root addField: field.
	].

	^ lut
