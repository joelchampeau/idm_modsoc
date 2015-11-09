grammar
functionDescription
	^('name:' asParser trim, 
		((#word asParser star) trim flatten), 
		'inputs:' asParser trim, 
		identifierListParser,
		'outputs:' asParser trim ,
		identifierListParser,
		'branch:' asParser trim,
		(identifier optional)  ) ==> [ :nodes |
		|effbdFunction|
		effbdFunction := EffbdFunction new functionName: (nodes second trim).
		effbdFunction inputFlows: (nodes fourth).
		effbdFunction outputFlows: (nodes sixth).
		nodes eighth ifNotNil: [ effbdFunction innerBranch: (nodes eighth trim) ].
		effbdFunction.
	].