parsing - document
parseFragmentSpread

	^ self parseName 
		ifEmpty: [ nil ]
		ifNotEmpty: [ :name |
			(GqlFragmentSpreadNode named: name)
				directives: self parseDirectiveList;
				yourself
		]
