as yet unclassified
start 	
	^(systemParser plus,
		componentParser star,
		portParser star,
		componentInstanceParser star,
		portInstanceParser star,
		connectorParser star) ==> [ :instance |
			self resolveDependencies .
			result values.
		]