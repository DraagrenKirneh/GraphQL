expecting
expectChar: aCharacter

	(self peekFor: aCharacter) ifFalse: [ 
		self error: 'Expected the next character to be a ', aCharacter asString 
	]