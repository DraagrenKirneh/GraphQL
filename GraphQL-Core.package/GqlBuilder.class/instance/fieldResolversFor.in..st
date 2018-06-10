private
fieldResolversFor: aCollection in: aClass

	| fieldResolvers |
	
	fieldResolvers := OrderedCollection new.
	
	Pragma withPragmasIn: aClass do: [ :pragma |
		(aCollection includes: pragma keyword) ifTrue: [ 
			fieldResolvers add: (GqlPerformResolver fromPragma: pragma) 
		] 			
	].
	
	^ fieldResolvers