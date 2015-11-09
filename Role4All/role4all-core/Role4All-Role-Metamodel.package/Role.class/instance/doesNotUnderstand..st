error handling
doesNotUnderstand: aMessage
	"Behavior performed when a method is not yet implemented in the role. For composite roles, first ask for the subroles if they are able to handle the method before raising an error."
	"|receiver|
	receiver := nil.
	(containedRoles isEmpty) ifFalse: [ 
		receiver := containedRoles detect: [ :each | each respondsTo: (aMessage selector)] ifNone: nil.
		receiver ifNil: [ 
			super doesNotUnderstand: aMessage.
		] ifNotNil: [ 
			^aMessage sendTo: receiver.
		]
	] ifTrue: [ 
		^super doesNotUnderstand: aMessage.
	]"
	super doesNotUnderstand: aMessage.