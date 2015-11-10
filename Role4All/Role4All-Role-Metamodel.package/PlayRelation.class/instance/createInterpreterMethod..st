delegation management
createInterpreterMethod: aSelector
	"Creates a method in a dynamic adapter" 
	|methodName methodParts methodText index|
	methodText := ''.
	index := 1.
	methodName := aSelector asString .
	methodParts := ':' split: methodName .
	methodParts do: [ :part |
		(part ~= '') ifTrue: [ 
			methodText := methodText , part, ': obj', index printString, ' '. 
			index := index + 1.
		]
	].
	methodText := methodText , String cr, String tab, 'self halt'.
	^methodText.
	