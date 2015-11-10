instance creation
named: aRoleName inCategory: aCategoryName
	"Creates a role class with the name aRoleName and adds it to the category aCategoryName"
	Role subclass: (aRoleName asSymbol )
	  instanceVariableNames: ''
	  classVariableNames: ''
	  poolDictionaries: ''
	  category: aCategoryName .
	