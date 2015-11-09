role handling
performOnAll: aBlock 
	self performOnAll: aBlock underCondition: [ :i | true ].