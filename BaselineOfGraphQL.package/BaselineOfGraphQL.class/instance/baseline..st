baselines
baseline: spec

	<baseline>

	spec for: #'common' do: [
				
		spec baseline: 'ServerDelegates' with: [ 
			spec repository: 'github://DraagrenKirneh/ServerDelegates'
		].		
				
		spec baseline: 'HnStream' with: [ 
			spec repository: 'github://DraagrenKirneh/HnStream'
		].		
				
		spec 
			package: #'GraphQL-Core'   		with: [ spec requires: #(HnStream) ];
			package: #'GraphQL-Schema' 		with: [ spec requires: #(core) ];
			package: #'GraphQL-Tests'  		with: [ spec requires: #(schema) ];		
			package: #'GraphQL-Delegate' 	with: [ spec requires: #(ServerDelegates core) ];
			
			group: 'core' with: #('GraphQL-Core');
			group: 'schema' with: #('GraphQL-Schema');
			group: 'tests' with: #('GraphQL-Tests');
			group: 'delegate' with: #('GraphQL-Delegate');
			group: 'default' with: #('core' 'schema' 'tests' 'delegate')
	
	]