generation
createElementDescFrom: aDictionary For: aString
	|elementDesc|
	elementDesc := Dictionary new.
	elementDesc at: 'elementName' put: aString.
	elementDesc addAll: aDictionary .
	^elementDesc.
	