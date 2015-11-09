visiting
visit: aCollection
	aCollection do: [ :each |
		each visit: self.
	].
	^docInfos .