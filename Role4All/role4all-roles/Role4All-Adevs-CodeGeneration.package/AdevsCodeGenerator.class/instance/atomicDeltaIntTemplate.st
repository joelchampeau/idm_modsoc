template definitions
atomicDeltaIntTemplate
	^'
		public void delta_int() { 
			switch(this.currentState) { 
				{{# deltaint }}
				case {{ atomicClassName }}.States.{{ outState }}:
					System.out.println(this.moduleName + " internal transition at t = " + this.moduleTime + " switching from " + this.currentState + " to {{ outState }}.");
					this.currentState = {{ atomicClassName }}.States.{{ inState }};
					break;
				{{/ deltaint }}
				default:
					break;
			}
		}
	'