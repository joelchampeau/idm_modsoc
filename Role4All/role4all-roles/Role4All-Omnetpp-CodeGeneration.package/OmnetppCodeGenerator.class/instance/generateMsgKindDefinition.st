code writing
generateMsgKindDefinition
	|fsh isFirst|
	fsh := StandardFileStream forceNewFileNamed: 'MsgKindDefinition.h'.
	isFirst := true.
	fsh nextPutAll: ('#ifndef MSGKINDDEFINITION_H_', String cr, '#define MSGKINDDEFINITION_H_', String cr, String cr).
	fsh nextPutAll: ('enum MsgKindDefinition {', String cr).
	resultMessage do: [ :each | 
		fsh nextPutAll: (String tab, each asUppercase ).
		isFirst ifTrue: [ 
			fsh nextPutAll: '=1'.
		].
		fsh nextPutAll: (',', String cr).
		isFirst := false.
	].
	fsh nextPutAll: ('};', String cr, '#endif').
	fsh close.