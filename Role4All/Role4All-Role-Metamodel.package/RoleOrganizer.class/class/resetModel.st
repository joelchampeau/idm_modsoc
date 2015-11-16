accessing
resetModel
	"Reset the singleton"
	uniqueInstance ifNotNil: [ 
		uniqueInstance contexts removeAll. 
		uniqueInstance players removeAll .
	].
	^self uniqueInstance .