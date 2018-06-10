parsing - document
parseOperation: operationType

	| operation |

	operation := GqlOperationNode forType: operationType.

	operation 
		name: self parseName;
		variables: self parseVariableDefinitionList;
		directives: self parseDirectiveList;
		selections: self parseSelectionSet.
		
	^ operation