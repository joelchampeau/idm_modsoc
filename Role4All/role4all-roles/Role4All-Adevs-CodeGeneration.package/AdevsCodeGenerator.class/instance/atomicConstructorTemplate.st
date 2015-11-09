template definitions
atomicConstructorTemplate
	^'
	public {{ atomicClassName }}(String moduleName) { 
		this.moduleName = moduleName;
		this.currentState = {{ atomicClassName }}.States.{{ initialState }};
		this.moduleTime = 0.;
	}
	'