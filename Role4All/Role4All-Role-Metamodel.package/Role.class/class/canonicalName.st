accessing
canonicalName
	"Get the name of the role class."
	^(self name trimLeft: [ :char | char == $# ]).