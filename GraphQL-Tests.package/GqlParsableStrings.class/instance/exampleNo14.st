field alias
exampleNo14

	<parseTest>
	
	^ '{
  			user(id: 4) {
    			id
    			name
    			smallPic: profilePic(size: 64)
   	 			bigPic: profilePic(size: 1024)
  			}
		}'