private
coerce: anObject

	anObject ifNil: [ 
		^ nullable 
			ifTrue: [ nil ]
			ifFalse: [ GqlCoercionError valueCannotBeNull ]	
	].

	anObject isCollection ifTrue: [ 
		^ anObject collect: [ :each | subType listCoerce: each ]
	].

	^ { subType coerce: anObject }