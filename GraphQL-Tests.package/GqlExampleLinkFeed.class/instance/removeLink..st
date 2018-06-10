mutation
removeLink: anId
	
	<gqlMutation: #removeLink args: #(id) type: #Link>
				
	^ feed removeKey: anId