model handling
attachAdapters
	attachedAdapters do: [ :aRule |
		(aRule at: 1) linkedToKind: (aRule at: 2) withInterpreter: (aRule at: 3).
	].