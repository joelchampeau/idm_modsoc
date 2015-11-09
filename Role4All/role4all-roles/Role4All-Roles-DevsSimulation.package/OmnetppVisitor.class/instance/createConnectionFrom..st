visiting
createConnectionFrom: aConnectionDescription
	|senderTypeName receiverTypeName senderType receiverType senderName receiverName outConnection inConnection outSGate inSGate outRGate inRGate sender receiver|
	sender := aConnectionDescription sender.
	receiver := aConnectionDescription receiver.
	senderTypeName := sender moduleTypeName.
	receiverTypeName := receiver moduleTypeName .
	senderName := sender moduleName.
	receiverName := receiver moduleName .
	senderType := result at: senderTypeName ifAbsent: nil.
	receiverType := result at: receiverTypeName ifAbsent: nil.
	outSGate := self createGateNamed: ('out', receiver aliasName) ofKind: 'out' in: senderType.
	inSGate := self createGateNamed: ('in', receiver aliasName ) ofKind: 'in' in: senderType.
	inRGate := self createGateNamed: ('in', sender aliasName ) ofKind: 'in' in: receiverType.
	outRGate := self createGateNamed: ('out', sender aliasName ) ofKind: 'out'  in: receiverType.
	outConnection := OppConnectionInstance new connectionType: 'IdealConnection'.
	outConnection sourceSubModule: (senderName ); targetSubmodule: (receiverName).
	outConnection sourceGate: outSGate ; targetGate: inRGate .
	inConnection := OppConnectionInstance new connectionType: 'IdealConnection'.
	inConnection sourceSubModule: receiverName; targetSubmodule: senderName .
	inConnection sourceGate: outRGate ; targetGate: inSGate .
	^{outConnection. inConnection .}. 