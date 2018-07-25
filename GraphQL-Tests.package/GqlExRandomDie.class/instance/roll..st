initialization
roll: count
	
	<gqlField: 'roll(count: Int = 1) : Int'>
	
	^ (1 to: count) collect: [ :_ | self roll ]