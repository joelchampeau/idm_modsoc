grammar
flowDefinition
	^('Flow' asParser , identifier trim, ${ asParser trim, flowDescription , $} asParser trim) ==> [ :nodes |
		|effbdFlow|
		effbdFlow := nodes fourth.
		effbdFlow uniqueIdentifier: (nodes second trim).
		result at: (effbdFlow uniqueIdentifier ) put: (effbdFlow).
	].