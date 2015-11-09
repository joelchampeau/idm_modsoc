code writing
generateHFileHeader: anOppSimpleModule
	|res|
	res := '#ifndef __', (anOppSimpleModule moduleName asUppercase ), '_H__', String cr.
	res := res, '#define __', (anOppSimpleModule moduleName asUppercase ), '_H__', String cr.
	res := res, String cr.
	res := res, '#include <omnetpp.h>', String cr.
	res := res, '#include "Ack_m.h"', String cr.
	res := res, '#include "Data_m.h"', String cr.
	res := res, '#include "Get_m.h"', String cr.
	res := res, '#include "Put_m.h"', String cr.
	res := res, '#include "WakeUp_m.h"', String cr.
	res := res, '#include "MsgKindDefinition.h"', String cr.
	res := res, String cr.
	^res.