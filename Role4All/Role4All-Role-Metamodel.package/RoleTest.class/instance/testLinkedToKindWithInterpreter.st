tests
testLinkedToKindWithInterpreter
	|lfgClass playerClass ao1 ao2 pr1 pr2 interpreterClass|
	lfgClass := (Smalltalk at: #LFG).
	playerClass := (Smalltalk at: #PlayerSubclass).
	ao1 := playerClass new.
	ao2 := playerClass new.
	RoleOrganizer uniqueInstance players add: ao1.
	RoleOrganizer uniqueInstance players add: ao2.
	playerClass plays: lfgClass .
	lfgClass linkedToKind: playerClass withInterpreter: #SimpleInterpreter.
	interpreterClass := Smalltalk at: #SimpleInterpreter ifAbsent: nil.
	self deny: interpreterClass = nil.
	pr1 := ao1 roles detect: [ :each | each role isKindOf: lfgClass ] ifNone: nil.
	pr2 := ao2 roles detect: [ :each | each role isKindOf: lfgClass ] ifNone: nil.
	self deny: pr1 = nil.
	self assert: (pr1 adapter isKindOf: interpreterClass).
	self deny: pr2 = nil.
	self assert: (pr2 adapter isKindOf: interpreterClass).
	