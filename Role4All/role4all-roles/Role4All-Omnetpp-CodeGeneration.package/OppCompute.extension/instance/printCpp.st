*Role4All-Omnetpp-CodeGeneration
printCpp
	|cppText|
	cppText := String tab, String tab, String tab, 'outProcessActivity.record(1);', String cr.
	cppText := cppText , String tab, String tab, String tab, 'WakeUp *msgWakeUp = new WakeUp("WakeUp", WAKEUP);', String cr.
	cppText := cppText, String tab, String tab, String tab, 'scheduleAt(simTime() + ', delay printString, ', msgWakeUp);', String cr.
	^cppText.