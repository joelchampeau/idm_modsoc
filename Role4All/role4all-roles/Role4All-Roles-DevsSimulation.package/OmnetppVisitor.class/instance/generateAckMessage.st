static generations
generateAckMessage
	|ackMessageDesc|
	ackMessageDesc := OppMessage new messageName: 'Ack'.
	ackMessageDesc parameters addLast: (OppParameter new parameterName: 'id'; parameterType: 'Integer').
	^ackMessageDesc .