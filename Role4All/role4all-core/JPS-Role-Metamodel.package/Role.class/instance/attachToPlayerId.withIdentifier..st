role handling
attachToPlayerId: aPlayerId withIdentifier: anIdentifier
	"Retrieves the instance of player which unique identifier is aPlayerId and attaches the instance of role to it, the unique identifier of the role is switched to anIdentifier."
	self attachToPlayerId: aPlayerId .
	roleId := anIdentifier .
	