*PP-Transformation-SyntaxicSugars
<- anObject 
	^anObject isStream ifTrue: [  
		self parse: anObject.
	] ifFalse: [  
		(anObject respondsTo: #readStream) ifTrue: [  
			self parse: anObject readStream.
		] ifFalse: [ 
			self parse: { anObject } readStream.
		]
	]. 