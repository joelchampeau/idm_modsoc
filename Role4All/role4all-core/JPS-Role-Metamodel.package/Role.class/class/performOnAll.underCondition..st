role handling
performOnAll: aBlock underCondition: aConditionBlock
	(self retrieveInstances select: aConditionBlock) do: aBlock.