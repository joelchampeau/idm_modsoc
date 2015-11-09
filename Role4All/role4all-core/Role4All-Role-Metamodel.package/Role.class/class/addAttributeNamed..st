instance variables
addAttributeNamed: anAttributeName
	"Adds an attribute with name anAttributeName to the role class and adds the accessor methods."
	|getter setter|
	self addInstVarNamed: anAttributeName .
	getter := anAttributeName , String cr, String tab, '^', anAttributeName .
	self compile: getter classified: 'accessing' notifying: nil.
	setter := anAttributeName ,': anObject', String cr.
	setter := setter,  String tab, anAttributeName, ':= anObject.'.
	self compile: setter classified: 'accessing' notifying: nil.