export
export
	|exportStr|
	(self class = RoleContext) ifTrue: [ self error: 'Cannot export the class RoleContext'. ].
	exportStr := (self exportClass), (self exportRoles), (self exportAllocationRules) , (self exportAdapterAssociationRules) .
	^exportStr .