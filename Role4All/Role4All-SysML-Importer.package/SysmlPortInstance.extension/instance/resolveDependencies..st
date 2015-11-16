*Role4All-SysML-Importer
resolveDependencies: aDictionary
	|newPortType newInLinks newOutLinks|
	newPortType := aDictionary at: portType ifAbsent: [ self error: ('Port ', portType, ' does not exist.') ].
	newInLinks := OrderedCollection new.
	newOutLinks := OrderedCollection new.
	inLinks do: [ :aLink |
		newInLinks addLast: (aDictionary at: aLink ifAbsent: [self error: ('Connector ', aLink, ' does not exist.')]).
	].
	outLinks do: [ :aLink |
		newOutLinks addLast: (aDictionary at: aLink ifAbsent: [self error: ('Connector ', aLink, ' does not exist.')]).
	].
	portType :=newPortType .
	inLinks := newInLinks .
	outLinks := newOutLinks .