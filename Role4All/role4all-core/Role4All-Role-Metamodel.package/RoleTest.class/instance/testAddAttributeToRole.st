tests
testAddAttributeToRole
	|lfgClass|
	lfgClass := (Smalltalk at: #LFG ifAbsent: nil).
	lfgClass ifNotNil: [ 
		lfgClass addAttributeNamed: 'functionName'.
		self assert: (lfgClass hasInstVarNamed: 'functionName').
		self assert: (lfgClass canUnderstand: #functionName).
		self assert: (lfgClass canUnderstand: #functionName:)
	].