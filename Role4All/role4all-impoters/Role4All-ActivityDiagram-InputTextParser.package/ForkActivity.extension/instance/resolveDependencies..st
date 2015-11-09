*Role4All-ActivityDiagram-InputTextParser
resolveDependencies: aDictionary 
	next ifNotNil: [ 
		|newCollection|
		newCollection := OrderedCollection new.
		next do: [ :each |
			newCollection add: (aDictionary at: each ifAbsent: [self error: ['Activity identifier ', each, ' does not exist']]).
		].
		next := newCollection .
	]