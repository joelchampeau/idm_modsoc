*JPS-eFFBD-InputTextParser
resolveDependencies: aDictionary
	|newCollection|
	newCollection := OrderedCollection new.
	effbdElements do: [ :each |
		newCollection addLast: (aDictionary at: each ifAbsent: [self error: 'EffbdElement id = ', each, ' does not exist.']).
	].
	effbdElements := newCollection .