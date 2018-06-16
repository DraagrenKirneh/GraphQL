as yet unclassified
DirectiveLocation

	^ DirectiveLocations ifNil: [ 
		DirectiveLocations := Set new 
			addAll: self executableDirectiveLocations;
			addAll: self typeSystemDirectiveLocations	
	]