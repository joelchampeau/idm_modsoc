role handling
plays: aRole withIdentifier: anIdentifier
	"Creates the association between an instance of player and a Role specifying the unique identifier of the Role."
	|playRelation|
	playRelation := self plays: aRole .
	playRelation role roleId: anIdentifier .
	RoleOrganizer uniqueInstance players add: aRole.
	^playRelation .