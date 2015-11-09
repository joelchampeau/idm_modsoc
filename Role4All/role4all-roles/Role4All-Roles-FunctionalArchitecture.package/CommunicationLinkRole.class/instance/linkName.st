accessing
linkName
	playRelation ifNil: [ 
		|receiver|
		receiver := containedRoles detect: [ :e | e respondsTo: #linkName] ifNone: nil.
		receiver ifNil: [ super doesNotUnderstand: #linkName ] ifNotNil: [ 
			^receiver linkName.
		]. 
	] ifNotNil: [ 
		^(playRelation linkName).
	]