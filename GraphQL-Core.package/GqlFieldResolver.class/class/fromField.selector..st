instance creation
fromField: aField selector: aSelector

	^ self new 
		name: aField name;
		field: aField;			
		selector: aSelector;
		yourself	
		