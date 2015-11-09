grammar
receiveActivityDescription
	^'next:' asParser trim, identifier, 'activityName:' asParser trim, ((#word asParser star) flatten trim), 'from:' asParser trim, (identifier optional) ==> [ :nodes |
		|activity|
		activity := ReceiveActivity new.
		activity next: (nodes second).
		activity activityName: (nodes fourth).
		nodes sixth ifNotNil: [ activity fromActivity: (nodes sixth) ].
		activity.
	].