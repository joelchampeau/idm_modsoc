tests
testDetach
	|lfgClass playerClass ao1 lfg1|
	lfgClass := (Smalltalk at: #LFG).
	playerClass := (Smalltalk at: #PlayerSubclass).
	ao1 := playerClass new.
	ao1 plays: lfgClass withIdentifier: 'lfg1'.
	lfg1 := lfgClass retrieveInstanceId: 'lfg1'.
	lfg1 detach .
	self deny: lfg1 = nil.
	self deny: ao1 = nil.
	self assert: ao1 roles isEmpty.
	self assert: lfg1 playRelation = nil.
	