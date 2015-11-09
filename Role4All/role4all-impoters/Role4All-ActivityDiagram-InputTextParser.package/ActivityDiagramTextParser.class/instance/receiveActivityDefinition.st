grammar
receiveActivityDefinition
	^'ReceiveActivity' asParser trim, identifier, ${ asParser trim, receiveActivityDescription, $} asParser trim ==> [ :nodes |
		|activity|
		activity := nodes fourth.
		activity uniqueIdentifier: (nodes second).
		result at: (activity uniqueIdentifier) put: activity.
	] .