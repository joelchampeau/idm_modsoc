context management
named: aClassName inCategory:  aCategoryName
	"Creates a cointext class with the name aClassName and adds it to the category aCategoryName"
	RoleContext subclass: (aClassName asSymbol )
	  instanceVariableNames: ''
	  classVariableNames: ''
	  poolDictionaries: ''
	  category: aCategoryName .