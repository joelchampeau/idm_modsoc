generation
generateElementPageFrom: aDictionary For: aString
	|elementDesc fs|
	elementDesc := self createElementDescFrom: aDictionary For: aString.
	fs := StandardFileStream forceNewFileNamed: (aString asCamelCase asLegalSelector , '.html').
	fs nextPutAll: ((MustacheTemplate on: (self elementTemplate  )) value: elementDesc ).
	fs close.