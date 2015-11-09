template definitions
portsTemplate
	^'
	{{# ports  }}
	public static final int {{ portName }} = {{ portValue }};
	'.