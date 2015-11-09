grammar
forkActivityDefinition
	^'ForkActivity' asParser trim, identifier, ${ asParser trim, forkActivityDescription, $} asParser trim ==> [ :nodes |
		|activity|
		activity := nodes fourth.
		activity uniqueIdentifier: (nodes second).
		result at: (activity uniqueIdentifier) put: activity.
	] .