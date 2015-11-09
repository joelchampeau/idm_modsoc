visiting
createSimulationNetworkFrom: aDevsNetwork
	result at: (aDevsNetwork networkName ) ifAbsent: [ 
		|oppNetwork|
		oppNetwork := OppNetwork new networkName: (aDevsNetwork networkName ).
		aDevsNetwork submodules do: [ :each |
			each visit: self.
			oppNetwork modules addLast: (OppSubModuleRelation new subModuleName: (each moduleName); module: (result at: (each moduleTypeName ))).
		].
		ConnectionRole retrieveInstances do: [ :each |
			oppNetwork connections addAll: (each visit: self).
		].
		oppNetwork connections do: [ :each |
			|sourceSM targetSM|
			sourceSM := oppNetwork modules detect: [ :e | e subModuleName = (each sourceSubModule ) ].
			targetSM := oppNetwork modules detect: [ :e | e subModuleName = (each targetSubmodule ) ].
			each sourceSubModule: sourceSM.
			each targetSubmodule: targetSM .
		].
		result at: (oppNetwork networkName ) put: oppNetwork .
	]