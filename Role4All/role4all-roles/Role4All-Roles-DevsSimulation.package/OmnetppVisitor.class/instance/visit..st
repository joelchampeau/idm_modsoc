visiting
visit: aCollection
	|oppSimulation oppNetwork|
	aCollection do: [ :each |
		each visit: self.
	].
	oppNetwork := result values detect: [ :e | e isKindOf: OppNetwork  ].
	oppSimulation := OppSimulation new simulationName: (oppNetwork networkName, 'Simulation').
	oppSimulation network: oppNetwork .
	oppSimulation modules: (result values select: [ :e | e isKindOf: OppModule ]).
	oppSimulation messageList: (self generateMessages ).
	^oppSimulation .