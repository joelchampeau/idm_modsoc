initialize
initialize
	"Initialization code for SysmlComponentInstance"

	super initialize.

	componentType := nil.
	connectors := OrderedCollection new.
	portInstances := Dictionary new.
	subComponents := OrderedCollection new.
	^self.