as yet unclassified
resolveDependencies
	result valuesDo: [ :v | v resolveDependencies: result ].