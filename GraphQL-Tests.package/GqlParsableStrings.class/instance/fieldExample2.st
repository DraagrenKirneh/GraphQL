field alias
fieldExample2

	<parseTest>
	^ 	'# `me` could represent the currently logged in viewer.
		{
  			me {
    			name
  			}
		}

		# `user` represents one of many users in a graph of data, referred to by a
		# unique identifier.
		{
  			user(id: 4) {
    			name
  			}
		}'