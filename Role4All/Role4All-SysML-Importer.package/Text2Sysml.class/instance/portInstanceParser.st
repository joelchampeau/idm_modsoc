grammar
portInstanceParser
	^'PortInstance' asParser, #blank asParser, identifier, '{' asParser trim, portInstanceDescParser, '}' asParser trim ==> [:nodes |
		result at: (nodes third trim) put: (nodes fifth).
	].