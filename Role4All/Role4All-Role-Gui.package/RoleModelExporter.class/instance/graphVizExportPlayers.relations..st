exporting
graphVizExportPlayers: playersArray relations: relationsArray
	"comment stating purpose of message"	
	^self graphVizTemplate value: { 
		'players' -> playersArray.
		'relations' -> relationsArray .
	} asDictionary partials: { 'elements' -> (self graphVizElementTemplate ). 'relations' -> (self graphVizRelationsTemplate ) } asDictionary .