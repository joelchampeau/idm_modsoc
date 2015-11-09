*JPS-eFFBD-InputTextParser
resolveDependencies: aDictionary 
	effbdLoopedBranch := aDictionary at: effbdLoopedBranch ifAbsent: [ self error: 'EffbdElement id = ', effbdLoopedBranch , ' does not exist.' ].