role interpretation
createSendBlocks: obj1
	| sbCollection comLinks |
	comLinks := CommunicationLinkRole retrieveInstances select: [ :e | (e source functionName) = (obj1 functionName) ].
	sbCollection := OrderedCollection new.
	comLinks do: [ :each |
		|sb|
		sb := SendBlock new onComLink: (each linkTypeName).
		sbCollection addLast: sb.
	].
	^sbCollection .