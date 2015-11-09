grammar
systemDescription
	^('name:' asParser trim, #word asParser star trim flatten, 'branch:' asParser, identifier) ==> [ :nodes |
		|system|
		system := EffbdSystem new systemName: (nodes second trim); mainBranch: (nodes fourth trim).
		system.
	].