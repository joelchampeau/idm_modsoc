tests
testPlaysWithIdentifier
	|c1 lfg1 playRelation prTest|
	c1 := (Smalltalk at: #PlayerSubclass) new.
	lfg1 := (Smalltalk at: #LFG).
	playRelation := c1 plays: lfg1 withIdentifier: 'test1'.
	self assert: (playRelation player ) = c1.
	prTest := (c1 roles detect: [ :each | each role class = lfg1 ] ifNone: nil).
	self deny:  (prTest= nil).
	self assert: (playRelation role roleId ) = 'test1'.