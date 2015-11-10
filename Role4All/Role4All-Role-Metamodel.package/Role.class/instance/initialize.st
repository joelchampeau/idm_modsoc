initialize
initialize
	"Initialization code for Role"

	super initialize.

	playRelation := nil.
	containedRoles := OrderedCollection new.
	^self.