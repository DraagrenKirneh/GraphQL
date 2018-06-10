instance creation
fromClass: aClass

	| resolver |
	
	resolver := self named: aClass gqlAlias.	
	resolver 
		addFields: (self pragmaFieldsIn: aClass);
		addFields: (self pragmaArrayFieldsIn: aClass).		
		
	^ resolver 