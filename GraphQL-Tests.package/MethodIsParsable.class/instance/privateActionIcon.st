testing
privateActionIcon
	"Return the icon for this action"
	
	^ IconicButton new
		target: method methodClass;
		actionSelector: #parseMethod:;
		arguments: { method };
		labelGraphic: (self iconForTestResultOf: method);
		color: Color transparent;
		helpText: 'Parse the string';
		extent: self iconExtent;
		borderWidth: 0