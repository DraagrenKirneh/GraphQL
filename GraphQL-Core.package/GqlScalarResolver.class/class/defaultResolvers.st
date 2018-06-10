initialization
defaultResolvers

	^ { 
			self named: #ID.
			self named: #Int.
			self named: #Float.
			self named: #String.			
			self named: #Boolean.
	 }