visiting
generateCodeForNetwork: anOppNetwork
	|fs |
	fs := StandardFileStream forceNewFileNamed: ((anOppNetwork networkName ), '.ned').
	anOppNetwork modules do: [ :each |
		each visit: self.
	].
	fs nextPutAll: imports .
	fs nextPutAll: ('network ', (anOppNetwork networkName ), ' {', String cr).
	fs nextPutAll: submodules .
	anOppNetwork connections do: [ :each |
		each visit: self.
	].
	fs nextPutAll: connections .
	fs nextPutAll: '}'.
	fs close.
	