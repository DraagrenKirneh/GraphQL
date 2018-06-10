parsing - document
parseFragment

	| fragment |
	
	fragment := GqlFragmentNode named: self parseFragmentName.
	binder addFragment: fragment.
	
	fragment 
		condition: self parseRequiredTypeCondition;
		directives: self parseDirectiveList;
		selections: self parseSelectionSet.
		
	^ fragment 