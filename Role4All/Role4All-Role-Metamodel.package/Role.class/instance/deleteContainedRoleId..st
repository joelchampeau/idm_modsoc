accessing
deleteContainedRoleId: aRoleId
	"Deletes the role which unique identifier is aRoleId from a composite role."
	|aContainedRole|
	aContainedRole := containedRoles detect: [ :role | role roleId = aRoleId  ].
	self deleteContainedRole: aContainedRole.
	