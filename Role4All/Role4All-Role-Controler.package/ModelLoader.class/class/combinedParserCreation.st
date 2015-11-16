parser creation
combinedParserCreation
	"Retrieves all the instances of the subclass of ModelImporter and creates a parser for all possible inputs."
	|combinedParser|
	combinedParser := nil.
	ModelImporter subclassesDo: [ :aModelImporter |
		combinedParser ifNil: [ 
			combinedParser := (aModelImporter importer asParser).
		] ifNotNil: [ 
			combinedParser := combinedParser / (aModelImporter importer asParser).
		].
	].
	^combinedParser .
	