An EffbdFunction is the description of an eFFBD function.

Instance Variables
	functionName:		String
	innerBranch:		EffbdBranch 
	inputFlows:		OrderedCollection<EffbdFlow>
	outputFlows:		OrderedCollection<EffbdFlow>

functionName
	- name of the function.

innerBranch
	- branch holding the functional decomposition of the current function.

inputFlows
	- list of the flows at the input of the function.

outputFlows
	- list of the flows at the output of the function.
