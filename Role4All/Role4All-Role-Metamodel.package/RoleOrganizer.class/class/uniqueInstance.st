accessing
uniqueInstance
	"Creates a singleton of RoleOrganizer."
	uniqueInstance ifNil: [ uniqueInstance := self new. ContextAllRoles registerContext . ].
	^uniqueInstance .