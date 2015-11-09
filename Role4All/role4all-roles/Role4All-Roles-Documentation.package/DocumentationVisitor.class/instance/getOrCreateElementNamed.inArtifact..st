visiting
getOrCreateElementNamed: aString inArtifact: aDictionary
	|element|
	element := aDictionary at: aString ifAbsentPut: (Dictionary new).
	^element.