model handling
addAdapter: aSymbol to: aRoleClass whenLinkedTo: aPlayerClass 
	attachedAdapters addLast: { aRoleClass. aPlayerClass . aSymbol. }