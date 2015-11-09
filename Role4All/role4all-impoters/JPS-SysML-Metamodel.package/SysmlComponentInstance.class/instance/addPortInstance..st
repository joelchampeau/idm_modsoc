accessing
addPortInstance: anArray
	|portAlias portInstance|
	portAlias := anArray at: 1.
	portInstance := anArray at: 2.
	portInstances at: portAlias put: portInstance.