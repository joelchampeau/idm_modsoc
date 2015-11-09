A RoleOrganizer is the class enabling to build the initial list of packages containing subclass of roles.

Instance Variables
	players: <GLMAnnouncingCollection<Player>>
	contexts: <GLMAnnouncingCollection<Category>>
	productionMode: <Boolean>
	attachedRoles: <Dictionary<Class, OrderedCollection>>
	attachedAdapters: <OrderedCollection<Array>>

players
	- collection containing all the instances of Player (Roles and Types)

contexts 
	- collection containing all the categories with role classes.

productionMode 
	- boolean activating the automatic association of roles to players and of dynamic adapters.

attachedRoles
	- Dictionary containing for each class of player a collection of the attached roles and the allocation condition.

attachedAdapters
	- Dictionary containing for each class of role the allocation of dynamic adapters.