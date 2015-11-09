visiting
createStatesTransitionsForComputing: aComputeBlock
	|oppCompute oppState oppTransition|
	oppCompute := OppCompute new delay: (aComputeBlock computationDuration ).
	oppState := OppState new stateName: 'Computation'.
	oppState onEntryAction: oppCompute .
	isInitialState ifTrue: [  
		oppState isInitial: isInitialState .
		isInitialState := false. 
	] ifFalse: [  
		oppTransition := OppTransition new associatedMessageName: outputMessage.
		oppTransition source: previousState ; target: oppState .
		oppState inTransitions addLast: oppTransition .
		previousState outTransitions addLast: oppTransition .
		currentModule transitions addLast: oppTransition.
	].
	previousState := oppState.
	outputMessage := 'WakeUp'.
	currentModule states addLast: oppState.
	