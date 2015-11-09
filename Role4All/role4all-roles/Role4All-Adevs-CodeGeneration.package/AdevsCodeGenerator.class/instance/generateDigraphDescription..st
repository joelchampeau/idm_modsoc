visiting
generateDigraphDescription: anAdevsDigraph
	|digraphDesc|
	digraphDesc := Dictionary new.
	digraphDesc at: 'simulationClassName' put: ('Simulation', anAdevsDigraph elementName).
	digraphDesc at: 'devsComponents' put: (anAdevsDigraph components ).
	digraphDesc at: 'routes' put: (anAdevsDigraph routes).
	^digraphDesc .