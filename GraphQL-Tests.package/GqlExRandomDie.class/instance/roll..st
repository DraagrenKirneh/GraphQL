initialization
roll: count
	
	<gqlField: 'roll(count: Int) : Int'>
	
	^ (1 to: count) collect: [ :_ | self roll ]