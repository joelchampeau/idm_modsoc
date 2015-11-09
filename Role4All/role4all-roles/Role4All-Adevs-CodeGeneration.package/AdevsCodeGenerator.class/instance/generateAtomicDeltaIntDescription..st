visiting
generateAtomicDeltaIntDescription: anAdevsAtomic
	|deltaIntDesc|
	deltaIntDesc := anAdevsAtomic delta_int collect: [ :each |
		{ 'atomicClassName' -> (anAdevsAtomic elementName). 'outState' -> (each at: 'outState'). 'inState' -> (each at: 'inState'). } asDictionary.
	].
	^deltaIntDesc .