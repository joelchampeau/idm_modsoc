static generations
generateDataMessage
	|dataMessageDesc|
	dataMessageDesc := OppMessage new messageName: 'Data'.
	dataMessageDesc parameters addLast: (OppParameter new parameterName: 'token'; parameterType: 'Object').
	^dataMessageDesc .