static generations
generateMessages
	|msgList|
	msgList := OrderedCollection new.
	msgList addLast: (self generateWakeUpMessage ).
	msgList addLast: (self generateAckMessage ).
	msgList addLast: (self generateDataMessage ).
	msgList addLast: (self generateFinishMessage ).
	msgList addLast: (self generateGetMessage ).
	msgList addLast: (self generatePutMessage ).
	^msgList .