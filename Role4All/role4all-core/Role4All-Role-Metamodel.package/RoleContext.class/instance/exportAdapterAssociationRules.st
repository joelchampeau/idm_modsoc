export
exportAdapterAssociationRules
	|rulesDef|
	rulesDef := ''.
	adaptationDefinitions do: [ :each |
		rulesDef := rulesDef , (self className printString), ' addAdapter: #', (each adapter printString), ' to: ', (each role printString).
		rulesDef := rulesDef, ' whenLinkedTo: ', (each player printString), '.', String cr.
	].
	^rulesDef.