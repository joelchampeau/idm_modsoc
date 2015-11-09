initialize
initialize
	"Initialization code for EffbdFlow"

	super initialize.

	flowName := ''.
	sourceFunction := nil.
	targetFunction := nil.
	isTrigger := false.
	^self.