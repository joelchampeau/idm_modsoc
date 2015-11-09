grammar
branchDescription
	^('elements:' asParser trim, identifierListParser) ==> [ :nodes |
		|branch|
		branch := EffbdBranch new effbdElements: (nodes second).
		branch.
	].