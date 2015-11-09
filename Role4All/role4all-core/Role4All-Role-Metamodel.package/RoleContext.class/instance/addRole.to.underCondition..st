accessing
addRole: aRoleClass to: aPlayerClass underCondition: aBlock 
	|associationRule|
	associationRule := RoleAssociationRule new.
	associationRule player: aPlayerClass ; role: aRoleClass ; condition: aBlock.
	allocationRules add: associationRule .