searching
retrieveInstanceId: aPlayerId
	"Enables to retrieve the instance of Player having the identifier specified by aPlayerId."
	|players|
	players := self retrieveInstances .
	^(players detect: [ :each | each playerId = aPlayerId ] ifNone: nil).