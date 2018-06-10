block strings
exampleNo25

	<parseTest>
	
	^ 	'mutation {
  			sendEmail(message: """
    			Hello,
      				World!

    			Yours,
      				GraphQL.
  			""")
		}'
