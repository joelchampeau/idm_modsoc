*Role4All-Omnetpp-CodeGeneration
printCpp
	(connectionType = 'IdealConnection') ifTrue: [ 
		^'->'.
	] ifFalse: [ 
		self error: ('Type ', connectionType, ' not yet handled').
	].