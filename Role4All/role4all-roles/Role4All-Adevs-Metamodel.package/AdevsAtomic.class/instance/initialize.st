initialization
initialize

	super initialize.

	delta_conf := ''.
	delta_ext := OrderedCollection new.
	delta_int := OrderedCollection new.
	output_func := OrderedCollection new.
	ta := OrderedCollection new.
	states := OrderedCollection new.
	ports := OrderedCollection new.
	initialState := nil.