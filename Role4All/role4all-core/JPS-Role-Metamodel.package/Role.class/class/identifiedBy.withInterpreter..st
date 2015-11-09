define interpretation
identifiedBy: aRoleId withInterpreter: aSymbol
	"Associates an instance of the class specified by aSymbol to the instance of role which unique identifier is aRoleId."
	|selectedInstance|
	aSymbol isSymbol ifFalse: [ 
		self error: (aSymbol printString,  ' is not a Symbol').
	].
	selectedInstance := self retrieveInstanceId: aRoleId .
	selectedInstance ifNotNil: [
		selectedInstance playRelation adapter: ((self retrieveClass: aSymbol) new).
	].