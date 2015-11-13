grammar
componentInstanceDescParser
	^('name:' asParser trim, 
		(#word asParser star) trim flatten, 
		'type:' asParser trim,
		identifier,
		'ports:' asParser trim, 
		identifierListParser,
		'subComponents:' asParser trim,
		identifierListParser,
		'connectors:' asParser trim,
		identifierListParser  ) ==> [ :nodes |
		|comp|
		comp := SysmlComponentInstance new elementName: (nodes second trim).
		comp componentType: (nodes fourth trim).
		comp portInstances: (nodes sixth).
		comp subComponents: (nodes eighth ).
		comp connectors: (nodes at: 10).
		comp.
	].