visiting
createStatesTransitionsForSending: aSendBlock
	|oppSend oppState oppTransition|
	oppSend := OppSend new onPort: (aSendBlock onComLink ).
	oppState := OppState new stateName: ('SendOn', aSendBlock onComLink ).
	oppState onEntryAction: oppSend.
	isInitialState ifTrue: [ 
		oppState isInitial: isInitialState .
		isInitialState := false.
	] ifFalse: [ 
		oppTransition := OppTransition new associatedMessageName: outputMessage.
		oppTransition source: previousState ; target: oppState .
		oppState inTransitions addLast: oppTransition .
		previousState outTransitions addLast: oppTransition .
		currentModule transitions addLast: oppTransition .
	].
	previousState := oppState.
	outputMessage := 'Ack'.
	currentModule states addLast: oppState.
	