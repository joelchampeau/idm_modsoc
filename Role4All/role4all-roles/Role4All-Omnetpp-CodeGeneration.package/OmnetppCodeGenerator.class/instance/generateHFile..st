code writing
generateHFile: anOppSimpleModule
	^((self generateHFileHeader: anOppSimpleModule), (self generateHFileClassDef: anOppSimpleModule )).