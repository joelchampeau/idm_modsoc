role interpretation
properties: obj1
	|type inputs outputs|
	type := obj1 typeName.
	inputs := ''.
	obj1 inputLinks do: [ :each |
		inputs := inputs, (each linkName).
	].
	outputs := ''.
	obj1 outputLinks do: [ :each |
		outputs := outputs, (each linkName).
	].
	^{{ 'propertyName' -> 'type'.
		'hasValue' -> ((type = '') not).
		'propertyValue' -> type.} asDictionary .
		{
			'propertyName' -> 'inputs'.
			'hasValue' -> ((inputs = '') not).
			'propertyValue' -> inputs.
		} asDictionary.
		{ 
			'propertyName' -> 'outputs'.
			'hasValue' -> ((outputs = '') not).
			'propertyValue' -> outputs.
		} asDictionary.
	}.