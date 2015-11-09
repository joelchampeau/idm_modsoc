code writing
generateCCFileOnEntry: anOppSimpleModule
	|res|
	res := String tab.
	res := res, 'void ', (anOppSimpleModule moduleName ), '::onEntry() {', String cr.
	res := res, String tab, String tab, 'switch(state) {', String cr.
	anOppSimpleModule states do: [ :each |
		res := res, (String tab, String tab), 'case ', each stateName asUppercase , ':', String cr.
		res := res, String tab, String tab, '{', String cr.
		res := res, (each onEntryAction printCpp).
		res := res, String tab, String tab, '}', String cr.
		res := res, String tab, String tab, 'break;', String cr.
	].
	res := res, String tab, String tab, String cr.
	res := res, String tab, '}', String cr.
	^res.