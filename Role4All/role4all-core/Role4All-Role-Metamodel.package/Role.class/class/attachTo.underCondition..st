role handling
attachTo: aPlayerClass underCondition: aBlock
	"Creates an association between the instances of the aPlayerClass which match the condition specified in aBlock and instances of the role class."
	aPlayerClass plays: self underCondition: aBlock.