as yet unclassified
setUp 
	|playerClass getter setter|
	super setUp .
	Role named: 'LFG' inCategory: 'JPS-Role-Test'.
	Player subclass: #PlayerSubclass
	  instanceVariableNames: ''
	  classVariableNames: ''
	  poolDictionaries: ''
	  category: 'JPS-Role-Test'.
	playerClass := Smalltalk at: #PlayerSubclass.
	playerClass addInstVarNamed: 'elementName' .
	getter := 'elementName' , String cr, String tab, '^elementName' .
	playerClass compile: getter classified: 'accessing' notifying: nil.
	setter := 'elementName: anObject', String cr.
	setter := setter,  String tab, 'elementName := anObject.'.
	playerClass compile: setter classified: 'accessing' notifying: nil.