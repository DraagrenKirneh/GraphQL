order
isActionHandled

	^ (method hasPragmaNamed: #gqlOperation:) or: [ method hasPragmaNamed: #gqlContextOperation: ]