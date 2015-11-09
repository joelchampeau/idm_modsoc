grammar
actionActivityDescription
	^'next:' asParser trim, identifier, 'activityName:' asParser trim, ((#word asParser star) flatten trim) ==> [ :nodes |
		|actionActivity|
		actionActivity := ActionPerformingActivity new.
		actionActivity next: (nodes second).
		actionActivity activityName: (nodes fourth).
		actionActivity .
	].