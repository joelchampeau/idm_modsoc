*JPS-eFFBD-InputTextParser
resolveDependencies: aDictionary
	sourceFunction ifNotNil: [ 
		sourceFunction := aDictionary at: sourceFunction ifAbsent: [ self error: ('Function id = ', sourceFunction, ' does not exist') ].
	].
	targetFunction ifNotNil: [ 
		targetFunction := aDictionary at: targetFunction ifAbsent: [ self error: ('Function id = ', targetFunction, ' does not exist') ].
	].