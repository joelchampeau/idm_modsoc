visiting
visit: aCollection
	|adevsSimulator adevsDigraph|
	aCollection do: [ :each |
		each visit: self.
	].
	adevsDigraph := result values detect: [ :e | e isKindOf: AdevsDigraph  ].
	adevsSimulator := AdevsSimulator new simulatorName: ('Simulation', (adevsDigraph elementName )).
	adevsSimulator mainNetwork: adevsDigraph.
	adevsSimulator devsComponents: (result values select: [:e | e isKindOf: AdevsAtomic  ]).
	^adevsSimulator .