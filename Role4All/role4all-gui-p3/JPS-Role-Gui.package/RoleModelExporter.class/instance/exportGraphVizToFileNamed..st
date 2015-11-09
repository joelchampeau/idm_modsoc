printing
exportGraphVizToFileNamed: aFilename
	|fs|
	fs := StandardFileStream fileNamed: aFilename.
	fs isNil ifFalse: [
		fs nextPutAll: (self graphVizExport ).
		fs close.
	].