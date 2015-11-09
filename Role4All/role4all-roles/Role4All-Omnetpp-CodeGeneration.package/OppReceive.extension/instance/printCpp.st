*Role4All-Omnetpp-CodeGeneration
printCpp
	|cppText|
	cppText := String tab, String tab, String tab, 'Get *msgGet = new Get("Get", GET);', String cr.
	cppText := cppText , String tab, String tab, String tab, 'send(msgGet, "out', fromPort , '");', String cr.
	cppText := cppText , String tab, String tab, String tab, 'outProcessActivity.record(0.);', String cr.
	^cppText.