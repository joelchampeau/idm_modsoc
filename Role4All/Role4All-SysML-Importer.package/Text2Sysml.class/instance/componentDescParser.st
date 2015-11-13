grammar
componentDescParser
	^('name:' asParser trim,
		(#word asParser star) trim flatten,
		'ports:' asParser trim,
		identifierListParser,
		'subComponents:' asParser trim,
		identifierListParser ) ==> [ :nodes |
			|comp|
			comp := SysmlComponent new elementName: (nodes second trim).
			comp ports: (nodes fourth).
			comp subComponents: (nodes sixth ).
			comp.
		].