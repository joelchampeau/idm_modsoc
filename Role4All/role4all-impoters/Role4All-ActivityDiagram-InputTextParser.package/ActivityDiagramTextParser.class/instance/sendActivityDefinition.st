grammar
sendActivityDefinition
	^'SendActivity' asParser trim, identifier, ${ asParser trim, sendActivityDescription, $} asParser trim ==> [ :nodes |
		|activity|
		activity := nodes fourth.
		activity uniqueIdentifier: (nodes second).
		result at: (activity uniqueIdentifier) put: activity.
	] .