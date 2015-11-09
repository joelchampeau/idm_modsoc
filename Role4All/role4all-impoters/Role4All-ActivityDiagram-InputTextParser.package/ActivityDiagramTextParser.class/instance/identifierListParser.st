grammar
identifierListParser
	^(identifier, listElement star) ==>  [ :nodes | 
		|list|
		list := OrderedCollection new.
		nodes ifNotNil: [ 
			list addLast: (nodes first trim).
			nodes second do: [  :each |
				list addLast: (each trim).
			].
		].
		list.
	].