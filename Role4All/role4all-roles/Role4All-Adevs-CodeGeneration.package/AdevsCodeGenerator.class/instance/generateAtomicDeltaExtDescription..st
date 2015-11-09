visiting
generateAtomicDeltaExtDescription: anAdevsAtomic
	| deltaExtDesc evtDict |
	deltaExtDesc := OrderedCollection new .
	evtDict := Dictionary new.
	anAdevsAtomic delta_ext do: [ :each | 
		|evtCol|
		evtCol := evtDict at: (each at: 'msg') ifAbsentPut: (OrderedCollection new).
		evtCol add: ({'outState' -> (anAdevsAtomic elementName , '.States.', (each at: 'outState')). 'inState' -> (anAdevsAtomic elementName, '.States.', (each at: 'inState'))} asDictionary ).
	].
	evtDict keys do: [ :evt |
		 deltaExtDesc add: ({'msg' -> evt. 'states' -> (evtDict at: evt)} asDictionary ).
	].
	^deltaExtDesc .