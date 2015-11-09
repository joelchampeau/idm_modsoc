grammar
branchDefinition
	^('Branch' asParser , identifier trim, ${ asParser trim, branchDescription , $} asParser trim) ==> [ :nodes |
		|branch|
		branch := nodes fourth.
		branch uniqueIdentifier: (nodes second trim).
		result at: (branch uniqueIdentifier ) put: (branch).
	].