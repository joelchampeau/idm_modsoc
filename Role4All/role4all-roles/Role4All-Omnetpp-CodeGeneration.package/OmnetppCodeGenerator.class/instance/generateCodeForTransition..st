visiting
generateCodeForTransition: anOppTransition
	|res|
	res := msgHandlers at: (anOppTransition associatedMessageName) ifAbsentPut: ''.
	res := res, String tab, String tab, String tab, 'case ', (anOppTransition source stateName asUppercase ), ':', String cr.
	(anOppTransition source stateName beginsWithEmpty: 'computation' caseSensitive: false) ifTrue: [ 
		res := res, String tab, String tab, String tab, String tab, 'outProcessActivity.record(1);', String cr.
	] ifFalse: [ 
		res := res, String tab, String tab, String tab, String tab, 'outProcessActivity.record(0);', String cr.
	].
	res := res, String tab, String tab, String tab, String tab, 'state = ', (anOppTransition target stateName asUppercase ),';', String cr.
	res := res, String tab, String tab, String tab, String tab, 'onEntry();', String cr.
	res := res, String tab, String tab, String tab, String tab, 'break;', String cr.
	msgHandlers at: (anOppTransition associatedMessageName ) put: res.