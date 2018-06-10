execution
execute: aQuery variables: aDictionary

	| document result operation |
	
	document := GqlQueryParser parse: aQuery.
	document operations size = 1 ifFalse: [ self error ].
	operation := document operations anyOne.
	result := self executeOperation: operation variables: aDictionary.
	
	^ Dictionary with: 'data' -> result
