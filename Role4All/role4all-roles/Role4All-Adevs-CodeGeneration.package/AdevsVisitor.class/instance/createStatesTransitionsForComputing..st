visiting
createStatesTransitionsForComputing: aComputeBlock
	|computationDelay computeState|
	computationDelay := aComputeBlock computationDuration .
	computeState := 'COMPUTATION'.
	isComputationState := true.
	currentAtomic addState: computeState .
	currentAtomic ta add: ({ 'state' -> computeState. 'duration'-> (computationDelay printString ). } asDictionary ).
	previousState ifNotNil: [ 
		previousState at: 'inState' put: computeState  .
	].
	previousState := { 'outState' -> computeState. 'inState' -> ''} asDictionary .
	isInitialState ifTrue: [ 
		initialState := computeState  .
		isInitialState := false.
	].