tests
testPlays
	|c1 lfg1|
	c1 := (Smalltalk at: #PlayerSubclass) new.
	lfg1 := (Smalltalk at: #LFG).
	c1 plays: lfg1.
	self deny: (c1 roles isEmpty ).
	self deny: (c1 roles detect: [ :each | each role class = lfg1 ] ifNone: nil) = nil.