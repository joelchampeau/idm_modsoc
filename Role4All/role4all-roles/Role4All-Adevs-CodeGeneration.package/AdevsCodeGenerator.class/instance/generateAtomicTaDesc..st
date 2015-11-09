visiting
generateAtomicTaDesc: anAdevsAtomic
	|taDesc|
	taDesc := anAdevsAtomic ta collect: [ :each |
		{ 'atomicClassName' -> (anAdevsAtomic elementName). 'state' -> (each at: 'state'). 'duration' -> (each at: 'duration'). } asDictionary.
	].
	^taDesc .
	
	 