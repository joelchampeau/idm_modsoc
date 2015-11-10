model handling
attachRoles: anObject
	|objectClass storedRules|
	objectClass := anObject class.
	storedRules := attachedRoles at: objectClass ifAbsent: nil.
	storedRules ifNotNil: [ 
		storedRules do: [ :aRule | 
			((aRule at: 2) value: anObject ) ifTrue: [ anObject plays: (aRule at: 1) ].
		].
	] .