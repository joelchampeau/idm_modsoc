template definitions
simulatorTemplate
	^'
	public class {{ simulationClassName }} { 
		public static void main(String[] args) { 
			{{> digraphTemplate }}
			Simulator simu = new Simulator(digraphNetwork);
			simu.execUntil(100.);
		}
	}
	'.