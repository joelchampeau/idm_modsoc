accessing
addAdapter: aSymbol to: aRoleClass whenLinkedTo: aPlayerClass 
	|adaptationRule|
	adaptationRule := RoleAdapterAssociationRule new.
	adaptationRule adapter: aSymbol; player: aPlayerClass; role: aRoleClass.
	adaptationDefinitions add: adaptationRule .