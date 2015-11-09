grammar
sendActivityDescription
	^'next:' asParser trim, identifier, 'activityName:' asParser trim, ((#word asParser star) flatten trim), 'to:' asParser trim, (identifier optional) ==> [ :nodes |
		|activity|
		activity := SendActivity new.
		activity next: (nodes second).
		activity activityName: (nodes fourth).
		nodes sixth ifNotNil: [ activity toActivity: (nodes sixth) ].
		activity.
	].