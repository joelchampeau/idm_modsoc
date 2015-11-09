grammar
loopDescription
	^('branch:' asParser trim, identifier) ==> [ :nodes |
		|loopOperator|
		loopOperator := EffbdLoopOperator new effbdLoopedBranch: (nodes second trim).
		loopOperator.
	].