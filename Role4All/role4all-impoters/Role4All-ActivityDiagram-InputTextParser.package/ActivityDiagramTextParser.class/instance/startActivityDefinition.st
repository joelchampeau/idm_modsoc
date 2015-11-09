grammar
startActivityDefinition
	^'Start' asParser trim, identifier, ${ asParser trim, startActivityDescription, $} asParser trim ==> [ :nodes |
		|startActivity|
		startActivity := nodes fourth.
		startActivity uniqueIdentifier: (nodes second).
		result at: (startActivity uniqueIdentifier) put: startActivity.
	] .