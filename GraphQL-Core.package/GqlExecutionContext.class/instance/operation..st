accessing
operation: anOperation

	anOperation variables do: [ :each |
		variables at: each name ifAbsentPut: [ each defaultValue ]. 
	].