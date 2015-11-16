grammar
connectorParser
	^'Connector' asParser, #blank asParser, identifier, '{' asParser trim, connectorDescParser, '}' asParser trim ==> [:nodes |
		result at: (nodes third trim) put: (nodes fifth).
	].