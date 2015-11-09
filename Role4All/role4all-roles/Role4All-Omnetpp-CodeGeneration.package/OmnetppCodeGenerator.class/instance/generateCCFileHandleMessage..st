code writing
generateCCFileHandleMessage: anOppSimpleModule
	|res|
	res := String tab, 'void ', anOppSimpleModule moduleName , '::handleMessage(cMessage *msg) {', String cr.
	res := res, String tab, String tab, 'switch(msg->getKind()) {', String cr.
	anOppSimpleModule transitions do: [ :each |
		each visit: self.
	].
	msgHandlers keysDo: [ :key |
		res := res, String tab, String tab, 'case ', key asUppercase , ':', String cr.
		res := res, String tab, String tab, '{', String cr.
		res := res, String tab, String tab, String tab, 'delete msg;', String cr.
		res := res, String tab, String tab, String tab, 'switch(state) {', String cr.
		res := res, (msgHandlers at: key).
		res := res, String tab, String tab, String tab, String tab, 'default:', String cr.
		res := res, String tab, String tab, String tab, String tab, String tab, 'delete msg;', String cr.
		res := res, String tab, String tab, String tab, String tab, String tab, 'break;', String cr.
		res := res, String tab, String tab, String tab, '}', String cr.
		res := res, String tab, String tab, '}', String cr.
		res := res, String tab, String tab, String tab, String tab, 'break;', String cr.
	].
	res := res, String tab, String tab, '}', String cr.
	res := res, String tab, '}', String cr.
	^res.