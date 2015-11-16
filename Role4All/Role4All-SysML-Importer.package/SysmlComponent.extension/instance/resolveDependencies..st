*Role4All-SysML-Importer
resolveDependencies: aDictionary
	|newPortsList newSubcomponentsList|
	newPortsList := OrderedCollection new.
	newSubcomponentsList := OrderedCollection new.
	ports do: [ :aPort |
		|p|
		p := aDictionary at: aPort ifAbsent: [self error: ('Port ', aPort, ' does not exist').].
		 newPortsList addLast: p.
		p owner: self.
	].
	subComponents do: [ :aSubcomponent |
		newSubcomponentsList addLast: (aDictionary at: aSubcomponent ifAbsent: [self error: ('Component ', aSubcomponent , 'does not exist.').]).
	].
	ports := newPortsList .
	subComponents := newSubcomponentsList .