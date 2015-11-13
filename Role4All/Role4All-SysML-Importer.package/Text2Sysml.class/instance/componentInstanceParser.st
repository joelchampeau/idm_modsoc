grammar
componentInstanceParser
	^'ComponentInstance' asParser, #blank asParser, identifier, '{' asParser trim, componentInstanceDescParser, '}' asParser trim ==> [:nodes |
		result at: (nodes third trim) put: (nodes fifth).
	].