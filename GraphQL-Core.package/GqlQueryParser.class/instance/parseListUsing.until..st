private - parsing
parseListUsing: aBlockOrSymbol until: aTerminator

	| list |

	list := OrderedCollection new.

	reader untilEnd: [ 
		"self skipWhitespaceAndComments."
		(self peekFor: aTerminator) ifTrue: [ ^ list ].
		list add: (aBlockOrSymbol value: self)
	].