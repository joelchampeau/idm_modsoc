*JPS-eFFBD-InputTextParser
resolveDependencies: aDictionary
	|newInputs newOutputs|
	innerBranch ifNotNil: [innerBranch := aDictionary at: innerBranch ifAbsent: [ self error: ('Branch id = ', innerBranch, ' does not exist') ]].
	newInputs := OrderedCollection new.
	inputFlows do: [ :each |
		newInputs addLast: (aDictionary at: each ifAbsent: [self error: ('Flow id = ', each, ' does not exist')]).
	].
	inputFlows := newInputs .
	newOutputs := OrderedCollection new.
	outputFlows do: [ :each |
		newOutputs addLast: (aDictionary at: each ifAbsent: [self error: ('Flow id = ', each, ' does not exist')]).
	].
	outputFlows := newOutputs .