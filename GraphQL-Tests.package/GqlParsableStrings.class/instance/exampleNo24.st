inline fragments
exampleNo24

	<parseTest>
	
	^ 	'query inlineFragmentNoType($expandedInfo: Boolean) {
  			user(handle: "zuck") {
    			id
    			name
    			... @include(if: $expandedInfo) {
      				firstName
      				lastName
      				birthday
    			}
 			}
		}'
