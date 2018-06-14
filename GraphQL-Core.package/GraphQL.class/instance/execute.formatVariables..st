execution
execute: aQuery formatVariables: aCollection

	^ self execute: (aQuery format: aCollection)