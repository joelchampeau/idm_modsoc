visiting
generateCodeForAtomic: anAdevsAtomic
	|atomicDesc fs|
	atomicDesc := self generateAtomicDescription: anAdevsAtomic .
	fs := StandardFileStream forceNewFileNamed: ((anAdevsAtomic elementName), '.java').
	fs nextPutAll: (self atomicTemplate asMustacheTemplate value: atomicDesc  partials: (
		{'statesTemplate' -> (self statesTemplate  ).
		 'portsTemplate' -> (self portsTemplate ).
		 'atomicTaTemplate' -> (self atomicTaTemplate).
		 'atomicConstructorTemplate' -> (self atomicConstructorTemplate ).
		 'atomicDeltaIntTemplate' -> (self atomicDeltaIntTemplate ).
		 'atomicOutputFuncTemplate' -> (self atomicOutputFuncTemplate ). 
		 'atomicDeltaExtTemplate' -> (self atomicDeltaExtTemplate ).
		 'atomicDeltaConfTemplate' -> (self atomicDeltaConfTemplate ).} asDictionary )).
	fs close.