export
exportTo: aFilename
	|fs|
	fs := StandardFileStream fileNamed: aFilename .
	fs ifNotNil: [ 
		fs nextPutAll: (self uniqueInstance export ).
		fs close .
	].