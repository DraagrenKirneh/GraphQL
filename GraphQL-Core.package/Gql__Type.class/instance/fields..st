accessing
fields: includeDeprecated

	"OBJECT and INTERFACE only fields(includeDeprecated: Boolean = false): [__Field!]"

	"<gqlField: 'fields(includeDeprecated: Boolean = false): [__Field!]'>"

	^ object fields values collect: [ :each | each introspect ]