model handling
addRole: aRoleClass to: aPlayerClass underCondition: aBlock
	|ruleCollection|
	ruleCollection := attachedRoles at: aPlayerClass ifAbsentPut: (OrderedCollection new).
	ruleCollection add: { aRoleClass. aBlock. }.