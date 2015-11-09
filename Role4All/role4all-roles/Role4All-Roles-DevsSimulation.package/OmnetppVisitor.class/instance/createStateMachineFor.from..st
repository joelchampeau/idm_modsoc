visiting
createStateMachineFor: anOppModule from: anActionGroup
	|actions oppTransition initialState|
	actions := OrderedCollection new.
	currentModule := anOppModule .
	isInitialState := true.
	previousState := nil.
	outputMessage := ''.
	actions addAllLast: (anActionGroup  receiveBlocks ).
	actions addLast: (anActionGroup computationBlock ).
	actions addAllLast: (anActionGroup sendBlocks).
	actions do: [ :each | each visit: self ].
	oppTransition := OppTransition new associatedMessageName: outputMessage .
	initialState := ((result select: [:each | each isKindOf: OppState]) select: [ :each | each isInitial  ]) first.
	oppTransition source: previousState ; target: initialState .
	initialState inTransitions addLast: oppTransition.
	previousState outTransitions addLast: oppTransition .