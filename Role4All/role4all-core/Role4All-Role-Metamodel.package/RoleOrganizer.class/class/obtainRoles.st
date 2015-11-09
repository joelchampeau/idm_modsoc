accessing
obtainRoles
	"Retrives all the instances of subclass of roles."
	^(RoleOrganizer uniqueInstance players select: [ :el | el isKindOf: Role ]).