grammar
systemDescParser
	^('name:' asParser trim, 
		(#word asParser star) trim flatten,
		'components:' asParser trim,
		identifierListParser,
		'connectors:' asParser trim,
		identifierListParser ) ==> [ :nodes |
		|sys|
		sys := SysmlSystemComponent new elementName: (nodes second trim).
		sys components: (nodes fourth ).
		sys connectors: (nodes sixth).
		sys.
	].