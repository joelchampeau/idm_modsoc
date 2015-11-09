*Role4All-Omnetpp-CodeGeneration
printCpp
	|cppText|
	cppText := String tab, String tab, String tab, 'Put *msgPut = new Put("Put", PUT);', String cr.
	cppText := cppText , String tab, String tab, String tab, 'send(msgPut, "out', onPort ,'");', String cr.
	cppText := cppText , String tab, String tab, String tab, 'outProcessActivity.record(0.);', String cr.
	^cppText .