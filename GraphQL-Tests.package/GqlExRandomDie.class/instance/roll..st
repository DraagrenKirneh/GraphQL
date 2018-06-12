initialization
roll: count

	<gqlQuery: #roll args: #((count Int)) listType: #Int>
	
	^ (1 to: count) collect: [ :_ | self roll ]