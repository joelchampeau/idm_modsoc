grammar
portDescParser
	^('name:' asParser trim, 
		(#word asParser star) trim flatten,
		'isBehavioral:' asParser trim,
		('true' asParser trim flatten | 'false' asParser trim flatten)) ==> [ :nodes |
		|port|
		port := SysmlPort new elementName: (nodes second trim).
		port isBehavioral: ((nodes fourth trim) = 'true').
		port.
	].