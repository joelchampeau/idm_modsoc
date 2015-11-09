grammar
forkActivityDescription
	^'next:' asParser trim, identifierListParser ==> [ :nodes |
		|activity|
		activity := ForkActivity new.
		activity next: (nodes second).
		activity .
	].