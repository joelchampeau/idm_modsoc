accessing
deleteContainedRole: aRoleInstance
	"Remove a role from a composite role."
	containedRoles remove: aRoleInstance ifAbsent: [ self error: 'Role to remove does not exist' ].
	