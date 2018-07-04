as yet unclassified
type: aTypename context: aContext
			
	^ aContext schema types at: aTypename asSymbol
		ifPresent: [ :type | self wrap: type ]
		ifAbsent: [ self error ]