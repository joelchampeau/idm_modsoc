visiting
createAtomicDevsInstanceFrom: anAtomicDevs
	|adevsAtomic|
	adevsAtomic := result at: (anAtomicDevs moduleTypeName ) ifAbsent: nil.
	adevsAtomic ifNil: [ 
		|actionGroups|
		adevsAtomic := AdevsAtomic new elementName: (anAtomicDevs moduleTypeName).
		result at: (anAtomicDevs moduleTypeName ) put: adevsAtomic .
		actionGroups := anAtomicDevs actionGroups .
		actionGroups ifNotNil: [ 
			|ag actions|
			actions := OrderedCollection new.
			ag := actionGroups first.
			self createStateMachineFor: adevsAtomic from: ag. 
		].
	].
	
	