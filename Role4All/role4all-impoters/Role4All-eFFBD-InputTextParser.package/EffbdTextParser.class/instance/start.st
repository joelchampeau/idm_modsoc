as yet unclassified
start 
	^systemDefinition, (branchDefinition / andDefinition / loopDefinition / functionDefinition / flowDefinition) plus ==> [ :instance |
		self resolveDependencies .
		result values.
	]