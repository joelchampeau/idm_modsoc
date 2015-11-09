generation
generateIndexFrom: aCollection
	|artifactsList fs|
	artifactsList := self createArtifactsListFrom: aCollection.
	fs := StandardFileStream forceNewFileNamed: 'index.html'.
	fs nextPutAll: ((MustacheTemplate on: (self indexTemplate )) value: artifactsList ).
	fs close.