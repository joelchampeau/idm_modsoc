grammar
connectorDescParser
	^'source:' asParser, identifier, 'target:' asParser trim, identifier ==> [:nodes |
		|conn|
		conn := SysmlConnector new source: (nodes second trim); target: (nodes fourth trim).
		conn.
	].