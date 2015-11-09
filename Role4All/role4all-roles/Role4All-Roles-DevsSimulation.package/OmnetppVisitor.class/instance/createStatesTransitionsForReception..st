visiting
createStatesTransitionsForReception: aReceiveBlock
	|oppReceive oppState oppTransition |
	oppReceive := OppReceive new fromPort: (aReceiveBlock fromComLink ).
	oppState := OppState new stateName: ('ReceiveFrom', (aReceiveBlock fromComLink )).
	oppState onEntryAction: oppReceive .
	isInitialState ifTrue: [  
		oppState isInitial: isInitialState .
		isInitialState := false.
	] ifFalse: [ 
		oppTransition := OppTransition new associatedMessageName: outputMessage .
		oppTransition source: previousState .
		oppTransition target: oppState.
		oppState inTransitions addLast: oppTransition .
		previousState outTransitions addLast: oppTransition .
		currentModule transitions addLast: oppTransition .
	].
	previousState := oppState .
	outputMessage := 'Data'.
	currentModule states addLast: oppState .
	