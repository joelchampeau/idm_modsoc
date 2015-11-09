code writing
generateCCFile: anOppSimpleModule
	|res|
	res := '#include ''', (anOppSimpleModule moduleName ), '.h''', String cr.
	res := res, String cr, 'Define_Module(', (anOppSimpleModule moduleName ), ');', String cr, String cr.
	res := res, (self generateCCFileInitialize: anOppSimpleModule ), String cr.
	res := res, (self generateCCFileOnEntry: anOppSimpleModule ).
	res := res, String cr.
	res := res, (self generateCCFileHandleMessage: anOppSimpleModule ).
	^res.