private
listCoerce: anObject

	anObject isCollection ifFalse: [ GqlCoercionError signal ].
	
	^ self coerce: anObject 