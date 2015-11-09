*Role4All-SysML-Importer
resolveDependencies: aDictionary
	|newComponentType newPortInstances newSubcomponents newConnectors |
	newComponentType := aDictionary at: componentType ifAbsent: [ self error: 'Component ', componentType, ' does not exist.' .].
	newPortInstances := OrderedCollection new.
	newSubcomponents := OrderedCollection new.
	newConnectors := OrderedCollection new.
	portInstances do: [ :aPortInstance |
		|p|
		p := aDictionary at: aPortInstance  ifAbsent: [ self error: 'Port ', aPortInstance , ' does not exist.' ].
		newPortInstances addLast: p.
		p owner: self.
	].
	subComponents do: [ :aSubComponent |
		newSubcomponents addLast: (aDictionary at: aSubComponent  ifAbsent: [self error: 'Component ', aSubComponent , ' does not exist.']).
	].
	connectors do: [ :aConnector |
		newConnectors addLast: (aDictionary at: aConnector ifAbsent: [self error: 'Connector ', aConnector , ' does not exist.']).
	].
	componentType := newComponentType .
	portInstances := newPortInstances .
	subComponents := newSubcomponents .
	connectors := newConnectors .