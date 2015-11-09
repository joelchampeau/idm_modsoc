grammar
andDefinition
	^('And' asParser , identifier trim, ${ asParser trim, andDescription , $} asParser trim) ==> [ :nodes |
		|andOperator|
		andOperator := nodes fourth.
		andOperator uniqueIdentifier: (nodes second trim).
		result at: (andOperator uniqueIdentifier ) put: (andOperator).
	].