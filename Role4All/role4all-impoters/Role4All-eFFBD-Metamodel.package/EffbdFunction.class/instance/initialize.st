initialize
initialize
	"Initialization code for EffbdFunction"

	super initialize.

	functionName := ''.
	innerBranch := nil.
	inputFlows := OrderedCollection new.
	outputFlows := OrderedCollection new.