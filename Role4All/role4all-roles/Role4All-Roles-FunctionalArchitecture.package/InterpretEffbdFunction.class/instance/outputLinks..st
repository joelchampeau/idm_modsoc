role interpretation
outputLinks: obj1
	|res comLinks|
	res := Dictionary new.
	comLinks := CommunicationLinkRole retrieveInstances select: [ :e | (e source functionName) = (obj1 functionName) ].
	comLinks do: [ :each |
		res add: ((each linkName ) -> each).
	].
	^res.