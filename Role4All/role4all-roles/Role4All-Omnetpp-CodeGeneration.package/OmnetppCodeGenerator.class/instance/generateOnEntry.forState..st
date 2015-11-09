code writing
generateOnEntry: text forState: anOppState
	|newText|
	newText := (text, String tab, String tab, 'case ', anOppState stateName , ':', String cr).
	^newText .