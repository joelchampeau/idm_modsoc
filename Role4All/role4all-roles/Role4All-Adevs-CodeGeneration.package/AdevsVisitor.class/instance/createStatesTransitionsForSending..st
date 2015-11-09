visiting
createStatesTransitionsForSending: aSendBlock
	|portName writingState waitingState|
	portName := aSendBlock onComLink .
	currentAtomic addPort: ('out', portName).
	currentAtomic addPort: ('in', portName).
	writingState := 'WRITINGONPORT', (portName asLegalSelector asUppercase).
	waitingState := 'WAITINGACKFROM', (portName asLegalSelector asUppercase).
	currentAtomic addStates: { writingState. waitingState .}.
	currentAtomic ta addAll: { { 'state' -> writingState. 'duration' -> '0.'.} asDictionary . {'state' -> waitingState. 'duration' -> 'Double.MAX_VALUE'. } asDictionary} .
	currentAtomic output_func add: { 'outState' -> writingState. 'outPort' -> ('out', portName). 'msg' -> 'PUT' . } asDictionary .
	currentAtomic delta_int add: ({ 'outState' -> writingState. 'inState' -> waitingState  }) asDictionary .
	previousState ifNotNil: [
		isComputationState ifTrue: [ 
			currentAtomic delta_int add: ({ 'outState' -> (previousState at: 'outState'). 'inState' -> writingState } asDictionary ) .
			isComputationState := false.
		] ifFalse: [  
			previousState at: 'inState' put: writingState .
			currentAtomic delta_ext add: previousState .
		]
		
	].
	previousState := { 'outState' -> waitingState. 'msg' -> 'ACK'. 'inState' -> ''.}  asDictionary .
	isInitialState ifTrue: [ 
		initialState := writingState .
		isInitialState := false.
	]
	