parsing
parseDirectiveList
	
	"duplicate"
	
	| gql |
	
	gql := GqlQueryParser new.
	gql reader: reader.
	
	^ gql parseDirectiveList
	
	"^ Array hnStreamContents: [ :stream | 
		[ self peekFor: $@ ] whileTrue: [ 
			stream put: self parseDirective
		]
	]"