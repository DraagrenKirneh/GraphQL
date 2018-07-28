as yet unclassified
type: aTypename context: aContext
		
	<gqlOperation: 'introspection __type(name: String!): __Type'>
	
	^ aContext schema types at: aTypename asSymbol
		ifPresent: [ :type | self wrap: type ]
		ifAbsent: [ self error ]