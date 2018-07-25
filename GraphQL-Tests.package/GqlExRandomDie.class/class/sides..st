construction
sides: aNumber
		
	<gqlOperation: 'query Dice getDie(numSides: Int): RandomDie'>
			
	^ self basicNew 
		sides: aNumber;
		yourself