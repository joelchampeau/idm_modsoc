accessing
resetInstance
	"Reset the singleton"
	uniqueInstance ifNotNil: [ 
		uniqueInstance contexts removeAll. 
		uniqueInstance players removeAll .
		uniqueInstance resetAttachedRoles .
		uniqueInstance resetAttachedAdapters .
		uniqueInstance := nil 
	].
	^self uniqueInstance .