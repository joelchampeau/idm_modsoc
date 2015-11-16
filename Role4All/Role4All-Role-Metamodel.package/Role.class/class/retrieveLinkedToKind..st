define interpretation
retrieveLinkedToKind: aClass
	"Retrives all the instances of roles linked to players of kind aClass."
	^(self retrieveInstances select: [ :anInst | 
		(anInst playRelation isNil not) and: [ anInst playRelation player isKindOf: aClass ]]).