visiting
createSimulationNetworkFrom: aDevsNetwork
	|networkName network|
	networkName := aDevsNetwork networkName .
	network := AdevsDigraph new elementName: networkName.
	aDevsNetwork submodules do: [ :each |
		each visit: self.
		network addComponent: ({'moduleType' -> (each moduleTypeName ). 'moduleName' -> (each moduleName )} asDictionary ).
	].
	aDevsNetwork connections do: [ :each |
		network addRoute: (
			{ 
				'sourceModule' -> (each sender moduleName).
				'sourceModuleType' -> (each sender moduleTypeName).
				'sourcePort' -> ('out', each receiver aliasName ).
				'targetModule' -> (each receiver moduleName).
				'targetModuleType' -> (each receiver moduleTypeName).
				'targetPort' -> ('in', each sender aliasName ).
			} asDictionary 
		).
	] .
	result at: (networkName ) put: network. 
	^result.