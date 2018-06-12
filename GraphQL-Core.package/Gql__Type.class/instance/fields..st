accessing
fields: includeDeprecated

	"OBJECT and INTERFACE only fields(includeDeprecated: Boolean = false): [__Field!]"

	<gqlQuery: #fields args: #( (includeDeprecated false) ) type: '[__Field]'>

	^ object fields values collect: [ :each | each introspect ]