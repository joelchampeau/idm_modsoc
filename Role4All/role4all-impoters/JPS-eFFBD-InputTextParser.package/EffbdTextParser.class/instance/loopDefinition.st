grammar
loopDefinition
	^('Loop' asParser , identifier trim, ${ asParser trim, loopDescription , $} asParser trim) ==> [ :nodes |
		|loopOperator|
		loopOperator := nodes fourth.
		loopOperator uniqueIdentifier: (nodes second trim).
		result at: (loopOperator uniqueIdentifier ) put: (loopOperator).
	].