visiting
generateAtomicDescription: anAdevsAtomic
	|atomicDesc index portsCollection|
	index := 0.
	atomicDesc := Dictionary new.
	atomicDesc at: 'atomicClassName' put: (anAdevsAtomic elementName).
	atomicDesc at: 'states' put: (anAdevsAtomic states collect: [:each | {'stateName' -> each} asDictionary ]).
	atomicDesc at: 'initialState' put: (anAdevsAtomic initialState ).
	portsCollection := OrderedCollection new.
	anAdevsAtomic ports do: [ :each |
		portsCollection addLast: ({ 'portName' -> each. 'portValue' -> (index printString). } asDictionary ).
		index := index + 1.
	].
	atomicDesc at: 'ports' put: portsCollection.
	atomicDesc at: 'ta' put: (self generateAtomicTaDesc: anAdevsAtomic ).
	atomicDesc at: 'deltaint' put: (self generateAtomicDeltaIntDescription: anAdevsAtomic ).
	atomicDesc at: 'outputfunc' put: (self generateAtomicOutputFuncDescription: anAdevsAtomic ).
	atomicDesc at: 'deltaext' put: (self generateAtomicDeltaExtDescription: anAdevsAtomic ).
	^atomicDesc.