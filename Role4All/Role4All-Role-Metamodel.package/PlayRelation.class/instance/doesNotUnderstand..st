error handling
doesNotUnderstand: aMessage 
	"Handles unimplemented method by creating a method in the linked instance of dynamic adapter from the selector in aMessage adding a parameter which is the player linked to the playRelation."
	|messageName newSelector newMessage |
	messageName := aMessage selector.
	aMessage hasArguments ifTrue: [ 
		newSelector := (messageName , 'player:') asSymbol .
		newMessage := Message selector: newSelector arguments: (((OrderedCollection newFrom: aMessage arguments ) addLast: player) asArray ).
	] ifFalse: [ 
		newSelector := (messageName , ':') asSymbol .
		newMessage := Message selector: newSelector arguments: { player . }.
	].
	(adapter class canUnderstand: (newSelector )) ifFalse: [ 
		adapter class compile: (self createInterpreterMethod: newSelector) classified: 'role interpretation' notifying: nil. 
	].
	^(newMessage sendTo: adapter ). 