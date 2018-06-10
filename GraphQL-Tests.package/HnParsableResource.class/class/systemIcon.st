as yet unclassified
systemIcon
	
	self == HnParsableResource ifTrue: [ ^ super systemIcon ].
	
	^ IconicButton new 
		target: self;
		actionSelector: #runMethods;
		arguments: {  };
		labelGraphic: #glamorousRestart asIcon ;
		color: Color transparent;
		extent: 12 @ 12;
		helpText: 'Run the tests';
		borderWidth: 0;
		yourself