accessing
plays: aRoleClass 
	"Specifies for each instance of a given Player subclass the Role that will be played."
	self plays: aRoleClass underCondition: [ :each | true ].