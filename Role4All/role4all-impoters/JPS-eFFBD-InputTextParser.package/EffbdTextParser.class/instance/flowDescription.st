grammar
flowDescription
	^('name:' asParser trim, 
		((#word asParser star) flatten trim), 
		'source:' asParser trim, 
		(identifier optional),
		'target:' asParser trim,
		(identifier optional),
		'isTrigger:' asParser trim,
		('true' asParser trim flatten / 'false' asParser trim flatten)  ) ==> [ :nodes |
		|effbdFlow|
		effbdFlow := EffbdFlow new flowName: (nodes second trim).
		nodes fourth ifNotNil: [ effbdFlow sourceFunction: (nodes fourth trim) ].
		nodes sixth ifNotNil: [effbdFlow targetFunction: (nodes sixth trim)].
		effbdFlow isTrigger: (nodes eighth trim = 'true').
		effbdFlow.
	].