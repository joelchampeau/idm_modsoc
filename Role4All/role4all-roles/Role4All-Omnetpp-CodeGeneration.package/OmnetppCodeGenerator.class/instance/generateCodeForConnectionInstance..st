visiting
generateCodeForConnectionInstance: anOppConnectionInstance
	connections := connections, String tab, String tab.
	connections := connections, (anOppConnectionInstance sourceSubModule subModuleName ), '.', (anOppConnectionInstance sourceGate gateName ).
	connections := connections, anOppConnectionInstance printCpp .
	connections := connections, (anOppConnectionInstance targetSubmodule subModuleName ),'.', (anOppConnectionInstance targetGate gateName ).
	connections := connections, ';', String cr.