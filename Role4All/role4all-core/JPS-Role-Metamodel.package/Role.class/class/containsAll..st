instance creation
containsAll: aCollection 
	"Creates an instance of a composite role containing the different roles which unique identifiers are specified in aCollection."
	|result|
	result := aCollection collect: [ :elem | RoleOrganizer uniqueInstance players detect: [ :e | e playerId = elem ] ].
	^(RoleOrganizer uniqueInstance players add: (self new containedRoles: (result asOrderedCollection ))).