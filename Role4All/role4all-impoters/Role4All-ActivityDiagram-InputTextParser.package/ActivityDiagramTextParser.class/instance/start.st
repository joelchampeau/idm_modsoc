as yet unclassified
start
	^(startActivityDefinition, (actionActivityDefinition / forkActivityDefinition / sendActivityDefinition / receiveActivityDefinition / joinActivityDefinition) plus) ==> [ :nodes |
		self resolveDependencies .
		result.
	]