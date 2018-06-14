initialization
roll: count
	
	<gqlQuery: 'roll(count: Int) : Int'>
	
	^ (1 to: count) collect: [ :_ | self roll ]