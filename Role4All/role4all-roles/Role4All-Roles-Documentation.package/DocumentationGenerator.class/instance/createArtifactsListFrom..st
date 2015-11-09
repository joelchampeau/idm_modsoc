generation
createArtifactsListFrom: aCollection
	|artifactsList|
	artifactsList := OrderedCollection new.
	aCollection do: [ :each |
		artifactsList addLast: ({'artifactPage'-> (each asCamelCase asLegalSelector ). 'artifactName' -> each. } asDictionary).
	].
	^({ 'artifacts' -> artifactsList. } asDictionary) .
	