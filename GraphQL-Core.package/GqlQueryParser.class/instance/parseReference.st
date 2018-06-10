parsing
parseReference
	
	| ref |
	
	ref := GqlVariableReferenceNode named: self parseName.
	
	^ ref