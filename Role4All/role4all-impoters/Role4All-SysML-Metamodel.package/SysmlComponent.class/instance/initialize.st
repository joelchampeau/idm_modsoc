initialize
initialize
	"Initialization code for SysmlComponent"

	super initialize.

	ports := Dictionary new.
	subComponents := OrderedCollection new.
	^self.