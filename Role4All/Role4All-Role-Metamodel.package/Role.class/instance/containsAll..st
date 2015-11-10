accessing
containsAll: anIdentifierCollection 
	anIdentifierCollection do: [ :each |
		|inst|
		inst := RoleOrganizer uniqueInstance players detect: [ :e | e playerId = each ] ifNone: nil.
		inst ifNotNil: [ 
			containedRoles addLast: inst.
		].
	].