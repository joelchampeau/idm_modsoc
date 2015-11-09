A SysmlComponentInstance is the description of an instance of a SysML component.

Instance Variables
	componentType:		<SysmlComponent>
	connectors:		<SysmlConnector>
	portInstances:		<SysmlConnectorInstance>
	subComponents:		<SysmlComponentInstance>

componentType
	- SysmlComponent for which the current SysmlComponentInstance is one instance.

connectors
	- Set of internal connectors.

portInstances
	- instances of ports

subComponents
	- dictionnary of the instance of the subcomponents.
