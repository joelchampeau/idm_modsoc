generation
createElementsListFrom: aCollection For: aString
	|elementsList artifactDesc|
	elementsList := OrderedCollection new.
	aCollection do: [ :each |
		elementsList addLast: ({'elementPage' -> (each asCamelCase asLegalSelector ). 'elementName' -> each} asDictionary ).
	].
	artifactDesc := { 'artifactName' -> aString. 'elements' -> elementsList  } asDictionary .
	^artifactDesc.
	