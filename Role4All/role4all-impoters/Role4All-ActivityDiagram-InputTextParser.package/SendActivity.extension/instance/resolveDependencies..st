*Role4All-ActivityDiagram-InputTextParser
resolveDependencies: aDictionary 
	super resolveDependencies: aDictionary.
	toActivity ifNotNil: [ toActivity := aDictionary at: toActivity ifAbsent: [ self error: ('Activity identifier ', toActivity , ' does not exist') ] ].