static generations
generatePutMessage
	|putMessageDesc|
	putMessageDesc := OppMessage new messageName: 'Put'.
	putMessageDesc parameters addLast: (OppParameter new parameterName: 'token'; parameterType: 'Object').
	^putMessageDesc .