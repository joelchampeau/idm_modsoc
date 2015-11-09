accessing
linkTypeName
	playRelation ifNil: [ 
		|receiver|
		receiver := containedRoles detect: [ :e | e respondsTo: #linkTypeName ] ifNone: nil.
		receiver ifNil: [ 
			super doesNotUnderstand: #linkTypeName.
		] ifNotNil: [ 
			^receiver linkTypeName.
		]
	] ifNotNil: [ 
		^(playRelation linkTypeName).
	] 