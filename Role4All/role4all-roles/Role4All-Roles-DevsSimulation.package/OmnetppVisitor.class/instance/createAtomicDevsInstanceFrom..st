visiting
createAtomicDevsInstanceFrom: anAtomicDevs
	"Creates an instance of an atomic devs model into the OMNeT++ simulation framework."
	|module|
	module := result at: (anAtomicDevs moduleTypeName ) ifAbsent: nil.
	module ifNil: [ 
		|actionGroups parsingResult|
		module := OppSimpleModule new moduleName: (anAtomicDevs moduleTypeName).
		result at: (anAtomicDevs moduleTypeName ) put: module.
		actionGroups := anAtomicDevs actionGroups.
		actionGroups ifNotNil: [ 
			|ag actions|
			actions := OrderedCollection new.
			ag := actionGroups first.
			self createStateMachineFor: module from: ag. 
		].
	].