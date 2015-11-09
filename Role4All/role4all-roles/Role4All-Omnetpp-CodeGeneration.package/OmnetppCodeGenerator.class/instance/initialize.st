initialize
initialize
	super initialize .
	result := Dictionary new.
	resultMessage := OrderedCollection new.
	imports := ''.
	submodules := String tab, 'submodules:', String cr.
	connections := String tab, 'connections:', String cr.