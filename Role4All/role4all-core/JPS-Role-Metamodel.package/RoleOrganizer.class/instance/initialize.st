initialize-release
initialize
	super initialize.
	players := GLMAnnouncingCollection new.
	contexts := GLMAnnouncingCollection new.
	productionMode := false.
	attachedRoles := Dictionary new .
	attachedAdapters := OrderedCollection  new.
	^self.