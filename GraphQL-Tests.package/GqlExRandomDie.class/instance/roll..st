initialization
roll: count

	<gqlQuery: #roll args: #((count Int)) type: '[Int]'>
	
	^ (1 to: count) collect: [ :_ | self roll ]