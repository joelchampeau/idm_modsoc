searching
retrieveInstances
	"Enables to retrieve all the instances of the player in the collection of working players."
	^(RoleOrganizer uniqueInstance players select: [ :each | each isKindOf: self ]).