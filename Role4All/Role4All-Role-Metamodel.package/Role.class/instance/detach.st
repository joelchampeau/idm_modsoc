role handling
detach
	"Enables to detach a role from a player."
	|relation|
	relation := playRelation.
	relation player roles remove: playRelation ifAbsent: [ self error: ('Unable to remove the relation between the role ', self roleId, 'and the player ', playRelation player playerId)  ].
	relation player: nil.
	relation role: nil.
	playRelation := nil.