initialize
initialize
	"Initialization code for RoleContext"

	super initialize.

	adaptationDefinitions := OrderedCollection new.
	allocationRules := OrderedCollection new.
	roles := OrderedCollection new.
	^self.