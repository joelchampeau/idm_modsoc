accessing
addPort: anArray 
	|portAlias port|
	portAlias := anArray at: 1.
	port := anArray at: 2.
	ports at: portAlias put: port.