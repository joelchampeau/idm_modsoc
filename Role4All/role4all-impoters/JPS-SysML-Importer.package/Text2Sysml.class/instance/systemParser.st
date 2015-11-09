grammar
systemParser
	^'SysmlSystem' asParser, #blank asParser, identifier, '{' asParser trim, systemDescParser, '}' asParser trim ==> [:nodes |
		result at: (nodes third trim) put: (nodes fifth).
	].