grammar
andDescription
	^('branches:' asParser trim, identifierListParser) ==> [ :nodes |
		|andOperator|
		andOperator := EffbdAndOperator new effbdParallelBranches: (nodes second ).
		andOperator.
	].