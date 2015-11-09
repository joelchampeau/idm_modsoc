role interpretation
createReceiveBlocks: obj1
	|rbCollection comLinks|
	rbCollection := OrderedCollection new.
	comLinks := CommunicationLinkRole retrieveInstances select: [ :e | (e target functionName ) = (obj1 functionName ) ].
	comLinks do: [ :each |
		|rb|
		rb := ReceiveBlock new fromComLink: (each linkName ).
		rbCollection addLast: rb.
	].
	^rbCollection .