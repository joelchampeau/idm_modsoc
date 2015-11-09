visiting
generateAtomicOutputFuncDescription: anAdevsAtomic
	|outputFuncDesc|
	outputFuncDesc := anAdevsAtomic output_func  collect: [ :each |
		{ 'atomicClassName' -> (anAdevsAtomic elementName). 'outState' -> (each at: 'outState'). 'outPort' -> (each at: 'outPort'). 
		 'msg' -> (each at: 'msg') } asDictionary.
	].
	^outputFuncDesc .