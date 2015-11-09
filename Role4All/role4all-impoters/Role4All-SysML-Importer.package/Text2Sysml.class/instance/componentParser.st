grammar
componentParser
	^'Component' asParser, #blank asParser, identifier, '{' asParser trim, componentDescParser, '}' asParser trim ==> [:nodes |
		result at: (nodes third trim) put: (nodes fifth).
	].