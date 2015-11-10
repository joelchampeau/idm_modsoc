accessing
addRole: aPlayRelation 
	"Add a link between an instance of Player and an instance of PlayRelation which makes the link between the Player and its Roles."
	roles addLast: aPlayRelation .