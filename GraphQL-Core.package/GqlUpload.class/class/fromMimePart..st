instance creation
fromMimePart: aMimePart

	^ self new 
		name: aMimePart fileName;
		data: aMimePart contents;
		type: aMimePart contentType