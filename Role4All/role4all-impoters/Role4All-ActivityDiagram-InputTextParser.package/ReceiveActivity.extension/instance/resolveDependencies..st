*Role4All-ActivityDiagram-InputTextParser
resolveDependencies: aDictionary 
	super resolveDependencies: aDictionary.
	fromActivity ifNotNil: [ fromActivity := aDictionary at: fromActivity ifAbsent: [ self error: ('Activity identifier ', fromActivity , ' does not exist') ] ].