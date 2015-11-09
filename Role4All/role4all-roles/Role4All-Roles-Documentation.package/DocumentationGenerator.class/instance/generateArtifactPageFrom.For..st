generation
generateArtifactPageFrom: aCollection For: aString
	|artifactDesc fs|
	artifactDesc := self createElementsListFrom: aCollection For: aString.
	fs := StandardFileStream forceNewFileNamed: (aString asCamelCase asLegalSelector , '.html').
	fs nextPutAll: ((MustacheTemplate on: (self artifactTemplate )) value: artifactDesc ).
	fs close.