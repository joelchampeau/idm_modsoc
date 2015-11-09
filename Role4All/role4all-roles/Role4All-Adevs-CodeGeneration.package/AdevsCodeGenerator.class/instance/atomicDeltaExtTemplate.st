template definitions
atomicDeltaExtTemplate
	^'
		public void delta_ext(double e, Collection<Digraph.PortValue> collection ) {
			this.moduleTime += e;
			for (Digraph.PortValue evt : collection) { 
				{{# deltaext }}
				if (evt.getValue() == MessageTypes.MSG_{{ msg }}) { 
					{{# states }}
					if (this.currentState == {{ outState }}) { 
						System.out.println(this.moduleName + " received event " + evt.getValue() + " at t = " + this.moduleTime +  " switching from state " + this.currentState + " to {{ inState }}.");
						this.currentState = {{ inState }};
					}
					{{/ states }}
				}
				{{/ deltaext }}
			}
		}
	'