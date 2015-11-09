template definitions
atomicOutputFuncTemplate
	^'
		public void output_func(Collection<Digraph.PortValue> collection ) { 
			switch(this.currentState) { 
				{{# outputfunc }}
				case {{ atomicClassName }}.States.{{ outState }}:
					System.out.println(this.moduleName + " generating event {{ msg }} in state " + this.currentState + ".");
					Digraph.PortValue output = new Digraph.PortValue({{ atomicClassName }}.{{ outPort }}, MessageTypes.MSG_{{ msg }});
					collection.add(output);
					break;
				{{/ outputfunc }}
				default:
					break;
			}
		}
	'