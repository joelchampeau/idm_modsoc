visiting
createStatesTransitionsForReception: aSendBlock
	|portName readingState waitingState|
	portName := aSendBlock fromComLink .
	currentAtomic addPort: ('out', portName).
	currentAtomic addPort: ('in', portName).
	readingState := 'READINGONPORT', (portName  asLegalSelector asUppercase).
	waitingState := 'WAITINGDATAFROM', (portName  asLegalSelector asUppercase).
	currentAtomic addStates: { readingState. waitingState .}.
	currentAtomic ta addAll: { { 'state' -> readingState. 'duration' -> '0.'. } asDictionary. { 'state' -> waitingState. 'duration' -> 'Double.MAX_VALUE'. } asDictionary }.
	currentAtomic output_func add: { 'outState' -> readingState. 'outPort' -> ('out', portName). 'msg' -> 'GET' . } asDictionary .
	currentAtomic delta_int add: ({ 'outState' -> readingState. 'inState' -> waitingState  } asDictionary) .
	previousState ifNotNil: [ 
		previousState at: 'inState' put: readingState .
	].
	previousState := { 'outState' -> waitingState. 'msg' -> 'DATA'. 'inState' -> ''.} asDictionary.
	currentAtomic delta_ext add: previousState.
	isInitialState ifTrue: [ 
		initialState := readingState .
		isInitialState := false.
	]
	
	