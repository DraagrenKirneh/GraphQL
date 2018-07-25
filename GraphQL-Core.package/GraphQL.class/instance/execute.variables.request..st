execution
execute: aQuery variables: aDictionary request: aRequest

	| document result operation |
	
	document := GqlQueryParser parse: aQuery.
	document operations size = 1 ifFalse: [ self error ].
	operation := document operations anyOne.
	result := self executeOperation: operation variables: aDictionary request: aRequest.
	
	^ Dictionary with: 'data' -> result
