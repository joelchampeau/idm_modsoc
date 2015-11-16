as yet unclassified
resolveDependencies
	result valuesDo: [ :aValue |
		aValue resolveDependencies: result.
	]