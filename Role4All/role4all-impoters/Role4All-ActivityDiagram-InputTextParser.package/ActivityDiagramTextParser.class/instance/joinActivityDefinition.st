grammar
joinActivityDefinition
	^'JoinActivity' asParser trim, identifier, ${ asParser trim, joinActivityDescription, $} asParser trim ==> [ :nodes |
		|activity|
		activity := nodes fourth.
		activity uniqueIdentifier: (nodes second).
		result at: (activity uniqueIdentifier) put: activity.
	] .