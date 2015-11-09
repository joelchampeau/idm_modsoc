template definitions
atomicTemplate
	^'
	public  class {{ atomicClassName }} { 
		{{> statesTemplate }}
		
		{{> portsTemplate }}
		
		private {{ atomicClassName }}.States initialState;
		private String moduleName;
		private double moduleTime;
		
		{{> atomicConstructorTemplate }}
		
		{{> atomicTaTemplate }}
		
		{{> atomicDeltaIntTemplate }}
		
		{{> atomicOutputFuncTemplate }}
		
		{{> atomicDeltaExtTemplate }}
		
		{{> atomicDeltaConfTemplate }}
	}
	'