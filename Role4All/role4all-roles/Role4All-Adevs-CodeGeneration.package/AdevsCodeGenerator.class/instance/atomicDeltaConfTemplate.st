template definitions
atomicDeltaConfTemplate
	^'
	public void delta_conf(Collection<Digraph.PortValue> collection) { 
		this.delta_int();
		this.delta_ext(0, collection);
	}
	'