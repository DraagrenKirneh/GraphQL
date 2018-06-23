resolving
fieldResolverAt: aName

	"aName == '__typename' ifTrue: [ ^ self type ]."
	aName crLog.
	^ fields at: aName 