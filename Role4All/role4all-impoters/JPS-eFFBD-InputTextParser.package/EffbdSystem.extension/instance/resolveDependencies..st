*JPS-eFFBD-InputTextParser
resolveDependencies: aDictionary 
	|branch|
	branch := aDictionary at: mainBranch ifAbsent: [ self error: 'Dictionary does not contain branch id: ', mainBranch  ].
	mainBranch := branch.