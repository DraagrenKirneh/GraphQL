public
handleMultipart: aRequest

	| entity op map items query variables |
	
	entity := aRequest entity.
	op :=  STONJSON fromString: (entity partNamed: 'operations') contents asString.
	map := STONJSON fromString: (entity partNamed: 'map') contents asString.
	items := OrderedCollection new.
	map associationsDo: [ :each | | paths file |
		paths := each value collect: [ :s | $. split: s ].
		file := GqlUpload fromMimePart: (entity partNamed: each key).
		items add: (paths -> file).
	].
	
	query := op at: 'query'.
	variables := op at: 'variables'.
	
	items do: [ :assoc |
		assoc key do: [ :pt | | x |
			x := op.
			pt allButLastDo: [ :p | x := x at: p ].
			x at: pt last put: assoc value
		]	
	].

	^ self execute: query with: variables for: aRequest
