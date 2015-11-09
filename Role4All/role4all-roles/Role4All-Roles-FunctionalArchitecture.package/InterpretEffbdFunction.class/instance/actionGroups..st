role interpretation
actionGroups: obj1
	|agCollection ag|
	agCollection := OrderedCollection new.
	ag := ActionGroup new.
	ag groupName: (obj1 functionName, '_ag1').
	ag isActive: true.
	ag receiveBlocks addAll: (self createReceiveBlocks: obj1).
	ag computationBlock: (ComputationBlock new computationDuration: 4).
	ag sendBlocks addAll: (self createSendBlocks: obj1).
	agCollection addLast: ag.
	^agCollection .