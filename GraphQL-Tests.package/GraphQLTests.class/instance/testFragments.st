tests
testFragments

	| root gql obj |

	root := GqlRootResolver new name: #inlineFragmentTyping.
	root makeField: [ :f | f name: #profiles; type: #Page; value: [ :p :a :c | Object new ]].
	
	gql := GqlBuilder new 
		addQuery: root;
		addResolver: self pageTypeResolver; 
		build.
	
	obj := gql execute: 'query inlineFragmentTyping {
  		profiles(handles: ["zuck", "cocacola"]) {
    		handle
			... friendFields 
    	}
  	}
	
	fragment friendFields on Page{
		 likers {
        count
      }
	}'.