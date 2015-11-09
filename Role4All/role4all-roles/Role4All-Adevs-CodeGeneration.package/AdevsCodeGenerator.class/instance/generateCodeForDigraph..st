visiting
generateCodeForDigraph: anAdevsDigraph
	|digraphDesc fs|
	digraphDesc := self generateDigraphDescription: anAdevsDigraph.
	fs := StandardFileStream forceNewFileNamed: ((anAdevsDigraph elementName), '.java').
	fs nextPutAll: (self simulatorTemplate asMustacheTemplate value: digraphDesc partials: ({'digraphTemplate' -> (self digraphTemplate ) } asDictionary )).
	fs close.