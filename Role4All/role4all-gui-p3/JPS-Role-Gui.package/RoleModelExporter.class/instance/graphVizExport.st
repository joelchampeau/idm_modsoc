exporting
graphVizExport
	"comment stating purpose of message"	
	|listPlayers listAssociations players roles|
	listPlayers := OrderedCollection new.
	players := RoleOrganizer uniqueInstance players.
	players do: [ :e | ((e playerId = nil) or: [ e playerId = '' ]) ifFalse: [ listPlayers add: ({'playerId' -> (e playerId) .} asDictionary)  ]. ].
	roles := players select: [ :e | e isKindOf: Role ].
	listAssociations := OrderedCollection new.
	roles do: [ :r | r playRelation ifNotNil: [listAssociations add: ({'source' -> (r playerId). 'target' -> (r playRelation player playerId).} asDictionary ). ]].
	^self graphVizExportPlayers: (listPlayers asArray) relations: (listAssociations asArray).