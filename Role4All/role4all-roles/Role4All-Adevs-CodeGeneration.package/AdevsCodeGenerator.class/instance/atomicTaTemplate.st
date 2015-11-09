template definitions
atomicTaTemplate
	^'
	public double ta() { 
		switch (this.currentState) {
		{{# ta }}
		case {{ atomicClassName }}.{{state}}:
			return {{ duration }};
		{{/ ta }}
		default:
			return Double.MAX_VALUE;
		}
	}
	'.