visiting
getOrCreateArtifactNamed: aString
	|artifact|
	artifact := docInfos at: aString ifAbsentPut: (Dictionary new).
	^artifact.