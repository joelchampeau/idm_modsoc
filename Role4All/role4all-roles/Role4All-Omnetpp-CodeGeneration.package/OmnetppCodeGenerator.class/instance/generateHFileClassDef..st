code writing
generateHFileClassDef: anOppSimpleModule
	|res firstState|
	firstState := true.
	res := 'using namespace std;', String cr.
	res := res, String cr.
	res := res, 'enum ', (anOppSimpleModule moduleName ), 'States {'.
	anOppSimpleModule states do: [ :eachState | 
		firstState ifFalse: [ 
			res := res, ', '.
		].
		res := res, (eachState stateName asUppercase ).
		firstState := false.
	].
	res := res, '};', String cr.
	res := res, 'class ', (anOppSimpleModule moduleName ), ' : public cSimpleModule', String cr.
	res := res, '{', String cr.
	res := res, String tab, 'protected:', String cr.
	res := res, String tab, String tab, 'virtual void handleMessage(cMessage *msg);', String cr.
	res := res, String tab, String tab, 'virtual void initialize();', String cr.
	res := res, String cr.
	res :=  res, String tab, 'private:', String cr.
	res := res, String tab, String tab, (anOppSimpleModule moduleName ), 'States state;', String cr.
	res := res, String tab, String tab, 'cOutVector outProcessActivity;', String cr.
	res := res, String tab, String tab, 'void onEntry();', String cr.
	res := res, '};', String cr.
	res := res, '#endif', String cr.
	^res.