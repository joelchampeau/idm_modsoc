role handling
attachToPlayerId: aPlayerId
	"Retrieves the instance of player which unique identifier is aPlayerId and attaches the instance of role to it."
	|aPlayer|
	aPlayer := (RoleOrganizer uniqueInstance players detect: [ :each | each playerId = aPlayerId ] ifNone: nil).
	aPlayer ifNotNil: [
		self attachTo: aPlayer.
	].
	