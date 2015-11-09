role interpretation
inputLinks: obj1
	|result comLinks|
	result := Dictionary new.
	comLinks := CommunicationLinkRole retrieveInstances select: [ :e | (e target functionName) = (obj1 elementName ) ].
	comLinks do: [ :each |
		result at: (each linkName ) put: each.
	].
	^result.