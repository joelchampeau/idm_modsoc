visiting
generateCodeForMessage: anOppMessage
	|fs|
	resultMessage addLast: (anOppMessage messageName ).
	fs := StandardFileStream forceNewFileNamed: ((anOppMessage messageName ), '.msg').
	fs nextPutAll: ('message ', (anOppMessage messageName ), ' {', String cr).
	anOppMessage parameters do: [ :each |
		fs nextPutAll: (String tab, (each visit: self), String cr).
	].
	fs nextPutAll: '}'.
	fs close.