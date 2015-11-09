model handling
addModel: aCollection 
	aCollection do: [ :modelElement |
		players add: modelElement.
		self attachRoles: modelElement.
	].
	self attachAdapters .