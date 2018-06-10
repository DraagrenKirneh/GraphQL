as yet unclassified
classes: aClassCollection roots: aRootCollection

	^ self new 
		addClasses: aClassCollection;
		addRoots: aRootCollection;
		build