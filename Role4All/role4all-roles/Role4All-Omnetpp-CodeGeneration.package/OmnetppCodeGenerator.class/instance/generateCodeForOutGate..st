visiting
generateCodeForOutGate: anOppOutGate
	(gates = '') ifTrue: [ 
		gates := String tab, 'gates:', String cr.
	].
	gates := gates, String tab, String tab, 'output ', anOppOutGate gateName , ';', String cr.