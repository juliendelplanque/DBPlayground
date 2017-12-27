baselines
defineDependencies: spec
	spec
		baseline: 'DBConnectionsManager' with: [ 
			spec repository: 'github://juliendelplanque/DBConnectionsManager/repository' ];
		baseline: 'SpecSyntaxHighlighting' with: [ 
			spec repository: 'github://juliendelplanque/SpecSyntaxHighlighting/repository' ]