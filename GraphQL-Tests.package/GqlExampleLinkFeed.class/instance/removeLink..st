mutation
removeLink: anId
	
	<gqlMutation: 'removeLink(id: ID!): Link'>
				
	^ feed removeKey: anId