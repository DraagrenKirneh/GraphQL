parse - basic
parseFragmentName

	| name |
	
	name := self parseName.
	
	name = '' ifTrue: [ self error: 'fragment name is not optional' ].
	name = 'on' ifTrue: [ self error: 'Fragments cannot be named "on"' ].
	
	^ name