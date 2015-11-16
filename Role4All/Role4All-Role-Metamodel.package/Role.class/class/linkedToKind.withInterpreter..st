define interpretation
linkedToKind: aPlayerClass withInterpreter: aSymbol
	"Associates an instance of dynamic adapter of type defined by aSymbol to all the roles associated to instances of type aPlayerClass."
	|selectedInstances|
	aSymbol isSymbol ifFalse: [ 
		self error: (aSymbol printString,  ' is not a Symbol').
	].
	selectedInstances := self retrieveLinkedToKind: aPlayerClass .
	selectedInstances do: [ :anInst |
		anInst playRelation adapter: ((self retrieveClass: aSymbol ) new).
	].