visiting
generateCodeForSimpleModule: anOppSimpleModule
	|fs|
	gates := ''.
	msgHandlers := Dictionary new.
	fs := StandardFileStream forceNewFileNamed: (anOppSimpleModule moduleName , '.ned').
	fs nextPutAll: ('package modules;', String cr).
	fs nextPutAll: ('simple ', (anOppSimpleModule moduleName ), ' {', String cr).
	anOppSimpleModule gates values do: [ :each |
		each visit: self.
	].
	fs nextPutAll: gates.
	fs nextPutAll: ('}').
	fs close.
	fs := StandardFileStream forceNewFileNamed: (anOppSimpleModule moduleName , '.cc').
	fs nextPutAll: (self generateCCFile: anOppSimpleModule ).
	fs close .
	fs := StandardFileStream forceNewFileNamed: (anOppSimpleModule moduleName , '.h').
	fs nextPutAll: (self generateHFile: anOppSimpleModule ).
	fs close .