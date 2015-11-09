role handling
plays: aRoleClass 
	"Creates the association between an instance of Player and an instance of Role creating the instance of role if the argument is a class."
	|playRelation roleInstance|
	roleInstance := aRoleClass new.
	playRelation := PlayRelation new .
	playRelation role: roleInstance .
	roleInstance playRelation: playRelation .
	self addRole: playRelation .
	playRelation player: self.
	RoleOrganizer uniqueInstance players add: roleInstance.
	^playRelation .