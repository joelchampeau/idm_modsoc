visiting
createStateMachineFor: anAdevsAtomic from: anActionGroup
	|actions|
	actions := OrderedCollection new.
	currentAtomic := anAdevsAtomic .
	isInitialState := true.
	previousState := nil.
	outputMessage := ''.
	isComputationState := false.
	actions addAllLast: (anActionGroup receiveBlocks ).
	actions add: (anActionGroup computationBlock ).
	actions addAllLast: (anActionGroup sendBlocks ).
	actions do: [ :each | each visit: self ].
	isComputationState ifTrue: [ 
		currentAtomic delta_int add: ({ 'outState' -> (previousState at: 'outState'). 'inState' -> initialState  } asDictionary ) .
		isComputationState := false.
	] ifFalse: [  
		previousState at: 'inState' put: initialState .
		currentAtomic delta_ext add: previousState .
	].
	currentAtomic initialState: initialState .
	