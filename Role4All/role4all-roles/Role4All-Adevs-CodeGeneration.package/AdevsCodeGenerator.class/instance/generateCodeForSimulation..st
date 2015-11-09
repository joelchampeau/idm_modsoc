visiting
generateCodeForSimulation: anAdevsSimulator
	|oldWorking current  |
	oldWorking := FileSystem disk workingDirectory .
	current := oldWorking / 'adevs' /(anAdevsSimulator simulatorName).
	FileSystem disk ensureCreateDirectory: current.
	FileSystem disk changeDirectory: current.
	self generateCodeForDigraph: (anAdevsSimulator mainNetwork ).
	anAdevsSimulator devsComponents do: [ :each |
		self generateCodeForAtomic: each.
	].
	FileSystem disk changeDirectory: oldWorking.