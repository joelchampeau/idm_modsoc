visiting
generateCodeForSimulation: anOppSimulation
	|oldWorking current|
	oldWorking := FileSystem disk workingDirectory .
	current := oldWorking / (anOppSimulation simulationName ).
	FileSystem disk ensureCreateDirectory: current.
	FileSystem disk changeDirectory: current.
	anOppSimulation network visit: self.
	current := current / 'modules'.
	FileSystem disk ensureCreateDirectory: current.
	FileSystem disk changeDirectory: current.
	anOppSimulation modules do: [ :each |
		each visit: self.
	].
	FileSystem disk changeDirectory: oldWorking .