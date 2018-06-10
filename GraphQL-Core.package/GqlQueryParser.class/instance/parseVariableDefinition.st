parsing
parseVariableDefinition

	| variableDefinition |
	
	self expectChar: $$.
		
	variableDefinition := GqlVariableDefintionNode new.
	variableDefinition name: self parseName.
		
	self expectColon.
	
	variableDefinition type: self parseType. 
	
	(self peekFor: $=) ifTrue: [ 
		variableDefinition defaultValue: self parseValue.
	].

	^ variableDefinition 