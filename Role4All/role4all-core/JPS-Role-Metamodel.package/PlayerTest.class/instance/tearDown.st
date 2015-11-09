as yet unclassified
tearDown 
	super tearDown .
	(Smalltalk at: #LFG) removeFromSystem .
	(Smalltalk at: #PlayerSubclass) removeFromSystem .
	Smalltalk globals organization removeCategoriesMatching: 'JPS-Role-Test'.  