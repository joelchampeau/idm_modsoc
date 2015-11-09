*Role4All-Roles-FunctionalArchitecture
populateFromRoles: aRoleCollection 
	"Given a Collection of roles, creates the associated visualisations and actors."
	|lfgs lfs comms|
	lfgs := Dictionary new.
	lfs := Dictionary new.
	comms := Dictionary new.
	(aRoleCollection select: #isLogicalFunctionsGroup) do: [ :each | lfgs add: (each functionName) -> each ].
	(aRoleCollection select: #isLeafFunction) do: [ :each | lfs add: (each functionName ) -> each ].
	(aRoleCollection select: #isCommunicationLink) do: [ :each | comms add: (each linkName) -> each ].
	self populateFromLfgs: lfgs leafFuncts: lfs comms: comms.
	 