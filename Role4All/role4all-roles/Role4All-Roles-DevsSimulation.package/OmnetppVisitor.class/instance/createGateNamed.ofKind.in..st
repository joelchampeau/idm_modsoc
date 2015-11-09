visiting
createGateNamed: aName ofKind: gateKind in: aModuleType
	|gate|
	gate := aModuleType gates detect: [ :g | g gateName = aName ] ifNone: [ 
		|createdGate|
		(gateKind = 'in') ifTrue: [ 
			createdGate := OppInGate new gateName: aName.
		] ifFalse: [ 
			createdGate := OppOutGate new gateName: aName.
		].
		aModuleType addGate: createdGate .
		^createdGate .
	] .
	^gate.