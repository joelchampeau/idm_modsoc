*JPS-SysML-Importer
resolveDependencies: aDictionary
	|newSource newTarget|
	newSource := (aDictionary at: source ifAbsent: [ self error: ('Component ', source, ' does not exist.'). ]).
	newTarget := (aDictionary at: target ifAbsent: [ self error: ('Component ', target , ' does not exist.'). ]).
	source := newSource .
	target := newTarget .