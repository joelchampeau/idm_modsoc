*Role4All-ActivityDiagram-InputTextParser
resolveDependencies: aDictionary 
	next ifNotNil: [ next := aDictionary at: next ifAbsent: [ self error: ('Activity identifier ', next, ' does not exist'). ]. ].