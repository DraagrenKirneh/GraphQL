initialization
roll: count

	<gqlQuery: #roll args: #(count) listType: #Int>
	
	^ (1 to: count) collect: [ :_ | self roll ]