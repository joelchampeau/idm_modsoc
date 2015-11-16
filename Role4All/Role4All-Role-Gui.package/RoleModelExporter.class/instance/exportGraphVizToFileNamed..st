printing
exportGraphVizToFileNamed: aFilename
	|fs|
	aFilename ifNotNil: [
		fs := StandardFileStream fileNamed: aFilename.
		fs isNil ifFalse: [
			fs nextPutAll: (self graphVizExport ).
			fs close.
		].
	].