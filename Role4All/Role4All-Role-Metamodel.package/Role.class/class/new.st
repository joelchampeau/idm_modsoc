instance creation
new
	|id|
	count ifNil: [ count := 0 ].
	id  := self canonicalName , (count printString ).
	count := count + 1.
	^super new roleId: id.