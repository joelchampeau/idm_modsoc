generation
generateDocumentationFrom: aDictionary
	|oldWorking current|
	oldWorking := FileSystem disk workingDirectory .
	current := oldWorking / 'Documentation'.
	FileSystem disk ensureCreateDirectory: current.
	FileSystem disk changeDirectory: current.
	self generateIndexFrom: (aDictionary keys).
	aDictionary keysDo: [ :anArtifactName |
		|artifactDict|
		artifactDict := aDictionary at: anArtifactName .
		self generateArtifactPageFrom: (artifactDict keys) For: anArtifactName .
		artifactDict keysDo: [ :anElementName |
			self generateElementPageFrom: (artifactDict at: anElementName ) For: anElementName . 
		].
	].
	FileSystem disk changeDirectory: oldWorking .
	
	