*GraphQL-Core
gqlResolve: anObject with: args in: aContext

	^ self cull: anObject cull: args cull: aContext