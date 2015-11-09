export
exportAllocationRules
	|rulesDef|
	rulesDef := ''.
	allocationRules do: [ :each |
		rulesDef := rulesDef , (self className printString), ' addRole: ', (each role printString), ' to: ', (each player printString).
		rulesDef := rulesDef, ' underCondition: ', (each condition printString), '.', String cr.
	].
	^rulesDef.