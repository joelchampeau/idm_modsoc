static generations
generateWakeUpMessage
	|wakeUpMessageDesc|
	wakeUpMessageDesc := OppMessage new messageName: 'WakeUp'.
	^wakeUpMessageDesc .