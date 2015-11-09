grammar
portInstanceDescParser
	^('name:' asParser trim, 
		(#word asParser star) trim flatten,
		'type:' asParser trim,
		identifier ,
		'inLinks:' asParser  trim,
		identifierListParser ,
		'outLinks:' asParser trim,
		identifierListParser ) ==> [ :nodes |
		|port|
		port := SysmlPortInstance new elementName: (nodes second trim).
		port portType: (nodes fourth trim).
		port inLinks: (nodes sixth).
		port outLinks: (nodes eighth).
		port.
	].