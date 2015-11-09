accessing
addAdapter: aSymbol to: aRoleClass whenLinkedTo: aPlayerClass 
	|adaptationRule|
	adaptationRule := DynamicAdapterAssociationRule new.
	adaptationRule adapter: aSymbol; player: aPlayerClass; role: aRoleClass.
	adaptationDefinitions add: adaptationRule .