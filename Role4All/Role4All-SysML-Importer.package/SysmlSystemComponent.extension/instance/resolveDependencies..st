*Role4All-SysML-Importer
resolveDependencies: aDictionary 
	|newComponents newConnectors|
	newComponents := OrderedCollection new.
	newConnectors := OrderedCollection new.
	components do: [ :aComponent |
		newComponents addLast: (aDictionary at: aComponent ifAbsent: [self error: ('Component ', aComponent , ' does not exist.')]).
	].
	connectors do: [ :aConnector |
		newConnectors addLast: (aDictionary at: aConnector ifAbsent: [self error: ('Connector ', aConnector , ' does not exist.')]).
	].
	components := newComponents .
	connectors := newConnectors .