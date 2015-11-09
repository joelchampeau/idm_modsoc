grammar
functionDefinition
	^('Function' asParser , identifier trim, ${ asParser trim, functionDescription , $} asParser trim) ==> [ :nodes |
		|effbdFunction|
		effbdFunction := nodes fourth.
		effbdFunction uniqueIdentifier: (nodes second trim).
		result at: (effbdFunction uniqueIdentifier ) put: (effbdFunction).
	].