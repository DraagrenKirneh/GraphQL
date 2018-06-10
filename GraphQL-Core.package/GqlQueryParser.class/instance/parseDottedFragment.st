parsing - document
parseDottedFragment

	| typeCondition |
	
	typeCondition := self parseTypeCondition.
	
	typeCondition ifNil: [ 
		self parseFragmentSpread ifNotNil: [ :spread |
			binder addSpread: spread.
			^ spread 
		]	
	].
	
	^ GqlFragmentNode inline
		condition: typeCondition;
		directives: self parseDirectiveList;
		selections: self parseSelectionSet
			
	
	