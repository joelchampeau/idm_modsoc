accessing
plays: aRoleClass underCondition: aBlock
	"Specifies for instances of a subclass of Player which match the condition specified in the aBlock parameter the played role."
	|potentialMatches|
	potentialMatches := self retrieveInstances .
	(potentialMatches select: [ :anInstance | aBlock value: anInstance ]) do: [ :anInstance  |
		anInstance plays: aRoleClass.
	]