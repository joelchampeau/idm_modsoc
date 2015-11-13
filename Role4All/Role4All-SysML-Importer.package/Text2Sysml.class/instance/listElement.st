grammar
listElement
	^($, asParser trim, identifier trim) ==> [ :nodes |
		nodes second.
	]