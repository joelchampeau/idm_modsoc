visiting
createDocInfos: aDocumentationElement
	|artifact element|
	artifact := self getOrCreateArtifactNamed: (aDocumentationElement owningArtifact ).
	element := self getOrCreateElementNamed: (aDocumentationElement elementName ) inArtifact: artifact.
	element at: 'properties' put: (aDocumentationElement properties ).