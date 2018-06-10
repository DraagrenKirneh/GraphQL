as yet unclassified
runMethods

	| m |
	
	m := Pragma allNamed: #parseTest in: self.
	
	m do: [ :each | self parseMethod: each method ].