template definitions
statesTemplate
	^'
	public enum States { 
		{{# states }}
		{{ stateName }},
		{{/ states  }}
	}
	'.