grammar
systemDefinition
	^('EffbdSystem' asParser , identifier trim, ${ asParser trim, systemDescription , $} asParser trim) ==> [ :nodes |
		|syst|
		syst := nodes fourth.
		syst uniqueIdentifier: (nodes second trim).
		result at: (syst uniqueIdentifier ) put: syst.
	].