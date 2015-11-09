visiting
generateCodeForInGate: anOppInGate
	(gates = '') ifTrue: [ 
		gates := String tab, 'gates:', String cr.
	].
	gates := gates, String tab, String tab, 'input ', anOppInGate gateName , ';', String cr.