model loading
load: fileName
	"Loads the model in the file named fileName."
	|stream data|
	fileName ifNotNil: [ 
		stream := StandardFileStream fileNamed: fileName .
		data := (self combinedParserCreation <- stream) .
		stream close.
		(data isKindOf: Collection ) ifTrue: [ 
			RoleOrganizer addModel: data.
		] ifFalse: [  
			RoleOrganizer addModel: (OrderedCollection new add: data).
		].
	].
	