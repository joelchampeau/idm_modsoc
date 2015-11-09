grammar
identifier
	^(#letter asParser, (#word asParser star), '.' asParser trim, (#digit asParser star)) trim flatten.