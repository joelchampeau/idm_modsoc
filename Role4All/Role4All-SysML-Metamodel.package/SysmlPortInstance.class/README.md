A SysmlPortInstance is the description of an instance of port in the SysML modeling language.

Instance Variables
	inLinks:		<OrderedCollection<SysmlConnector>>
	outLinks:		<OrderedCollection<SysmlConnector>>
	owner:		<SysmlComponentInstance>
	portType:		<SysmlPort>

inLinks
	- list of the input links that arrive on the port.

outLinks
	- list of the output links that go away from the port.

owner
	- instance of the component that holds the port.

portType
	- port class describing the port.
