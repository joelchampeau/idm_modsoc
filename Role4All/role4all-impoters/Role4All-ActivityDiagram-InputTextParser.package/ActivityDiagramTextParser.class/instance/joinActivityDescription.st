grammar
joinActivityDescription
	^'next:' asParser trim, identifier, 'inputActivities:' asParser trim, identifierListParser ==> [ :nodes |
		|activity|
		activity := JoinActivity new.
		activity next: (nodes second).
		activity numberJoiningActivities: (nodes fourth size).
		activity.
	].