role handling
interpretWith: aSymbol 
	"Specifies an adapter for a given role instance."
	playRelation adapter: ((self class retrieveClass: aSymbol) new).