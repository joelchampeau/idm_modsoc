grammar
identifier
	^(#letter asParser, (#word asParser star), $. asParser , (#digit asParser star)) flatten trim.