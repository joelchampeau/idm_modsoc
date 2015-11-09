code writing
generateCCFileInitialize: anOppSimpleModule
	|res initState|
	res := String tab.
	res := res, 'void ', (anOppSimpleModule moduleName ), '::initialize() {', String cr.
	(anOppSimpleModule states) ifNotEmpty: [ 
		res := res, String tab, 'state = '.
		initState := (anOppSimpleModule states detect: [:each | each isInitial ]).
		res := res, (initState stateName asUppercase ), ';', String cr. 
	].
	res := res, String tab, 'outProcessActivity.setName("Process Activity");', String cr.
	res := res, String tab, 'onEntry();', String cr.
	res := res, '}', String cr.
	^res.