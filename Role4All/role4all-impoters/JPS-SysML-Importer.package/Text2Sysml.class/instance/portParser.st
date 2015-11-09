grammar
portParser
	^'Port' asParser, #blank asParser, identifier, '{' asParser trim, portDescParser, '}' asParser trim ==> [:nodes |
		result at: (nodes third trim) put: (nodes fifth).
	].