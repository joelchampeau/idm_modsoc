model loading
loadFromString: aString
	"Loads the model in the string named aString."
	| data|
		data := (self combinedParserCreation <- aString) .
		(data isKindOf: Collection ) ifTrue: [ 
			RoleOrganizer addModel: data.
		] ifFalse: [  
			RoleOrganizer addModel: (OrderedCollection new add: data).
		].
	