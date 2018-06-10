as yet unclassified
pragmaArrayFieldsIn: aClass

	| resolvers |
	
	resolvers := self fieldPragma: #gqlQuery:args:listType: in: aClass.
	resolvers do: [ :each | each returnsArray ].
	
	^ resolvers 