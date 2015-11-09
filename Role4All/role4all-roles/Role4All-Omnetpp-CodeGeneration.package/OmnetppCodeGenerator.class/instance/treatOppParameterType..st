utils
treatOppParameterType: typeString
	(typeString = 'Integer') ifTrue: [ 
		^'int'.
	] ifFalse: [ 
		(typeString = 'Double') ifTrue: [ 
			^'double'.
		] ifFalse: [ 
			^'int'.
		].
	] .