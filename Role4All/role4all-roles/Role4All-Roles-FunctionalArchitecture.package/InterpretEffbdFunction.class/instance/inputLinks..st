role interpretation
inputLinks: obj1
	|res comLinks|
	res := Dictionary new.
	comLinks := CommunicationLinkRole retrieveInstances select: [ :e | (e target functionName) = (obj1 functionName) ].
	comLinks do: [ :each |
		res add: ((each linkName ) -> each).
	].
	^res.