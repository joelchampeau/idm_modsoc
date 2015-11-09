role interpretation
createSendBlocks: obj1
	|sbCollection comLinks|
	sbCollection := OrderedCollection new.
	comLinks := CommunicationLinkRole retrieveInstances select: [ :e | (e source functionName ) = (obj1 functionName) ].
	comLinks do: [ :each |
		|sb|
		sb := SendBlock new onComLink: (each linkName ).
		sbCollection addLast: sb.
	].
	^sbCollection .