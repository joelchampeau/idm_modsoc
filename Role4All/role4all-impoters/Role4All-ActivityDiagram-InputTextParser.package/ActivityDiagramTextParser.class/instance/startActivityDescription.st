grammar
startActivityDescription
	^'next:' asParser trim, identifier ==> [ :nodes |
		|startActivity|
		startActivity := StartActivity new.
		startActivity next: (nodes second).
	].