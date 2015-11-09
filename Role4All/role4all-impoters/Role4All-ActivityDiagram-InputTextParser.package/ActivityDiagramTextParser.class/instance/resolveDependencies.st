as yet unclassified
resolveDependencies
	result valuesDo: [ :each |
		each resolveDependencies: result.
	].