private - parsing
parseCommaListUsing: aBlockOrSymbol until: aTerminator

	| list |

	list := Dictionary new.

	reader untilEnd: [ | item |
		(self peekFor: aTerminator) ifTrue: [ ^ list ].
		list ifNotEmpty: [ self expectComma ].
		item := aBlockOrSymbol value: self.
		list at: item name put: item.
	].
	
	self endOfLineReached
