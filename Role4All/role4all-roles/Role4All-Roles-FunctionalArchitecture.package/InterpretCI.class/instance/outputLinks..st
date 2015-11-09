role interpretation
outputLinks: obj1
	|result comLinks|
	result := Dictionary new.
	comLinks := CommunicationLinkRole retrieveInstances select: [ :e | (e source functionName) = (obj1 elementName) ].
	comLinks do: [ :each |
		result add: ((each linkName ) -> each).
	].
	^result.