accessing
sender
	^(containedRoles detect: [ :e | e isKindOf: SenderRole ]).