define interpretation
retrieveClass: aSymbol
	"Return the class associated to aSymbol and creates it if it does not exist."
	^(Smalltalk at: aSymbol ifAbsent: [
		RoleAdapter subclass: aSymbol
			instanceVariableNames: ''
	  		classVariableNames: ''
	  		poolDictionaries: ''
	  		category: (self category).
	]).