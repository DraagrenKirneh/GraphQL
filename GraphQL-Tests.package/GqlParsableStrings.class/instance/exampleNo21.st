type conditions
exampleNo21

	<parseTest>
	
	^ 'query FragmentTyping {
  		profiles(handles: ["zuck", "cocacola"]) {
    		handle
    		...userFragment
    		...pageFragment
  		}
	}

	fragment userFragment on User {
  		friends {
    		count
  		}
	}

	fragment pageFragment on Page {
  		likers {
    		count
  		}
	}'