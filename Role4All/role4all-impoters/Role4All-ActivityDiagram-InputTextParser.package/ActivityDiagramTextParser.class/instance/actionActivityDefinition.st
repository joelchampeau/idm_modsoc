grammar
actionActivityDefinition
	^'ActionActivity' asParser trim, identifier, ${ asParser trim, actionActivityDescription, $} asParser trim ==> [ :nodes |
		|actionActivity|
		actionActivity := nodes fourth.
		actionActivity uniqueIdentifier: (nodes second).
		result at: (actionActivity uniqueIdentifier) put: actionActivity.
	] .