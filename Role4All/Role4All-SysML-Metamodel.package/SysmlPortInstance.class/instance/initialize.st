initialize
initialize
	"Initialization code for SysmlPortInstance"

	super initialize.

	inLinks := OrderedCollection new.
	outLinks := OrderedCollection new.
	owner := nil.
	portType := nil.
	^self.