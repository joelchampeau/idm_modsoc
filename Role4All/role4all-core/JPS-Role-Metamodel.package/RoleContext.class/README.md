A RoleContext is the description of a context of usage of roles.

Instance Variables
	adaptationDefinitions:		<OrderedCollection<DynamicAdapterAssociationRule>>
	allocationRules:		<OrderedCollection<RoleAssociationRule>>
	roles:		<OrderedCollection<Role class>>

adaptationDefinitions
	- Collection containing the associations of dynamic adapters to be put in place in this context.

allocationRules
	- Collection containing the rules for allocating roles in the context.

roles
	- Collection of Role classes available in the context.
